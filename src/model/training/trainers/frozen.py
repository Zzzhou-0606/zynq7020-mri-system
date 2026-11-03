"""Train the selected four branches without importing historical experiments.

The frozen recipe stops at the previously selected epochs. It does not repeat
model selection, partition changes or fusion-weight searches.
"""
import os
os.environ.setdefault('CUBLAS_WORKSPACE_CONFIG', ':4096:8')

import argparse
import json
from pathlib import Path
import random
import shutil

import numpy as np
import torch
from torch import nn

from host.paths import classification_bundle
from training.models.cnn import FourLayerCNN
from training.models.frozen_three_view import AxialMeanModel, StandardizedHead
from training.data_pipeline.training_data import prepare, read_json, write_json, load_branch

CONFIG = Path(__file__).resolve().parents[1] / 'configs/frozen_training.json'
FILENAMES = {
    'a': 'axial_cnn_epoch169.pt', 'b': 'coronal_head_epoch12.pt',
    'c': 'sagittal_head_epoch6.pt', 's': 'severity_head_epoch2.pt',
}


class AxialTrainingModel(AxialMeanModel):
    def __init__(self):
        nn.Module.__init__(self)
        base = FourLayerCNN('grid')
        self.features, self.pool = base.features, base.pool
        self.embedding = nn.Sequential(base.head[0], base.head[1])
        # Original SequenceClassifier -> StatusModel construction consumed this
        # three-class head before replacing it. Preserve the RNG trajectory.
        self.classifier = nn.Linear(32, 3)
        self.classifier = nn.Linear(32, 2)


def seed_everything(seed, threads=4):
    random.seed(seed)
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.cuda.manual_seed_all(seed)
    torch.backends.cudnn.benchmark = False
    torch.backends.cudnn.deterministic = True
    torch.use_deterministic_algorithms(True)
    torch.set_num_threads(threads)


def build(branch, x):
    if branch == 'a':
        return AxialTrainingModel()
    model = StandardizedHead(1024 if branch == 's' else 512)
    model.mean.copy_(x.mean(0))
    model.std.copy_(x.std(0, unbiased=False).clamp_min(1e-6))
    return model


def fit(branch, x, y, settings, seed, output, device):
    """Same Adam/class-weight/shuffle operations as the selected training runs."""
    if branch != 'a' and device != 'cpu':
        raise ValueError('B/C/S heads were trained on CPU; retain that arithmetic')
    if not len(y) or y.dtype != torch.long or x.shape[0] != len(y):
        raise ValueError('Invalid training tensor/labels')
    if not torch.isfinite(x).all() or not torch.isin(y, torch.tensor([0, 1])).all():
        raise ValueError('Training inputs must be finite with binary target labels')
    counts = torch.bincount(y, minlength=2)
    if (counts == 0).any():
        raise ValueError('Both training classes must be present')
    seed_everything(seed, threads=1 if branch == 's' else 4)
    x, y = x.to(device), y.to(device)
    model = build(branch, x).to(device)
    weights = len(y) / (2 * torch.bincount(y, minlength=2).float())
    objective = nn.CrossEntropyLoss(weight=weights, reduction='none')
    optimizer = torch.optim.Adam(model.parameters(), lr=settings['learning_rate'],
                                 weight_decay=settings['weight_decay'])
    shuffle = torch.Generator().manual_seed(seed)
    output = Path(output)
    output.mkdir(parents=True, exist_ok=False)
    with (output/'loss.jsonl').open('x', encoding='utf-8') as log:
        for epoch in range(1, settings['epochs']+1):
            model.train()
            total = 0.
            for ids in torch.randperm(len(y), generator=shuffle).split(settings['batch_sessions']):
                ids = ids.to(device)
                optimizer.zero_grad(set_to_none=True)
                loss = objective(model(x[ids]), y[ids]).mean()
                if not torch.isfinite(loss):
                    raise ValueError('Nonfinite training loss')
                loss.backward()
                optimizer.step()
                total += float(loss.detach())*len(ids)
            log.write(json.dumps({'epoch': epoch, 'weighted_fit_loss': total/len(y)})+'\n')
            log.flush()
            print(f'{branch.upper()} epoch {epoch}/{settings["epochs"]}: loss={total/len(y):.8f}', flush=True)
    state = {k: v.detach().cpu().clone() for k, v in model.state_dict().items()}
    with (output/'selected.pt').open('xb') as f:
        torch.save({'state_dict': state, 'epoch': settings['epochs'], 'fit_n': len(y),
                    'branch': branch, 'config': settings, 'seed': seed,
                    'training_mode': 'fixed_selected_epoch'}, f)
    with (output/'last_with_optimizer.pt').open('xb') as f:
        torch.save({'state_dict': state, 'optimizer': optimizer.state_dict(),
                    'epoch': settings['epochs'], 'shuffle_state': shuffle.get_state(),
                    'torch_rng_state': torch.get_rng_state(),
                    'cuda_rng_states': torch.cuda.get_rng_state_all()}, f)
    return model


def new_work_directory(path):
    path = Path(path).resolve()
    delivery = classification_bundle().parents[2]
    if path == delivery or delivery in path.parents:
        raise ValueError('Keep training output/cache outside the delivered source tree')
    if path.exists():
        raise FileExistsError('Choose a new output directory: '+str(path))
    return path


def train(cache, output, branches, profile, device):
    cache = Path(cache).resolve()
    metadata = read_json(cache/'dataset.json')
    if metadata['profile'] != profile:
        raise ValueError('Cache was prepared with a different training recipe')
    if device == 'cuda' and 'a' in branches and not torch.cuda.is_available():
        raise RuntimeError('A training requires CUDA; choose --device cpu explicitly to change the execution environment')
    output = new_work_directory(output)
    output.mkdir(parents=True)
    write_json(output/'training_config.json', profile)
    write_json(output/'training_environment.json', {
        'torch': torch.__version__, 'cuda': torch.version.cuda,
        'a_device': device, 'head_device': 'cpu',
        'feature_device': metadata['device'], 'branches': branches,
        'cache': str(cache), 'input_contract': metadata['contract'],
    })
    release = output/'release/classification'
    release.mkdir(parents=True)
    for branch in branches:
        x, y = load_branch(cache, metadata, branch)
        settings = profile['branches'][branch]
        if len(y) != settings['fit_n']:
            raise ValueError(f'{branch}: unexpected fit cohort size')
        fit(branch, x, y, settings, profile['seed'], output/f'work/{branch}',
            device if branch == 'a' else 'cpu')
        shutil.copy2(output/f'work/{branch}/selected.pt', release/FILENAMES[branch])
        del x, y
        if torch.cuda.is_available():
            torch.cuda.empty_cache()
    shutil.copy2(cache/'resnet18_imagenet_backbone.pt', release/'resnet18_imagenet_backbone.pt')
    write_json(output/'release/training_recipe.json', profile)
    print('MODEL_RELEASE_READY='+str(release))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command', required=True)
    p = sub.add_parser('prepare', help='Prepare training inputs from licensed OASIS-1 T88 files')
    p.add_argument('--raw-root', type=Path, required=True)
    p.add_argument('--cohort', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--device', choices=['cpu','cuda'], default='cuda')
    p.add_argument('--config', type=Path, default=CONFIG)
    p = sub.add_parser('train', help='Train at the frozen epochs; write a new release')
    p.add_argument('--cache', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--branches', nargs='+', choices=['a','b','c','s'], default=['a','b','c','s'])
    p.add_argument('--device', choices=['cpu','cuda'], default='cuda')
    p.add_argument('--config', type=Path, default=CONFIG)
    args = parser.parse_args()
    profile = read_json(args.config)
    if args.command == 'prepare':
        seed_everything(profile['seed'])
        prepare(args.raw_root, args.cohort, new_work_directory(args.output), profile, args.device)
    else:
        if len(args.branches) != len(set(args.branches)):
            parser.error('Do not repeat branch names')
        train(args.cache, args.output, args.branches, profile, args.device)


if __name__ == '__main__':
    main()
