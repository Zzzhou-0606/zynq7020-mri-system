"""Ordered frozen-cohort inputs, with explicit external MRI and cache paths."""
import hashlib
import json
from pathlib import Path
import re
import shutil

import nibabel as nib
import numpy as np
import torch

from host.paths import classification_bundle
from training.models.frozen_three_view import FrozenEncoder
from training.reference.frozen_hierarchy import PROJECT
from training.reference.frozen_normalization import normalize_variable
from training.reference.normalization import validate_session
from training.data_pipeline.frozen_views import spatial_slices, coronal_slices, sagittal_slices


def read_json(path):
    return json.loads(Path(path).read_text(encoding='utf-8'))


def write_json(path, value):
    with Path(path).open('x', encoding='utf-8') as f:
        json.dump(value, f, indent=2, ensure_ascii=False, allow_nan=False)
        f.write('\n')


def normalize_coronal(images, masks, scale):
    """Original B feature cache saturated before casting to signed INT16."""
    validate_session(images, masks, expected_slices=len(images))
    valid = masks.astype(bool)
    low, high = np.percentile(images[valid].astype(np.float64), [1, 99], method='linear')
    lower, upper = int(np.rint(low/scale)), int(np.rint(high/scale))
    if not -32768 <= lower < upper <= 32767:
        raise ValueError('Percentile bounds exceed frozen integer range')
    encoded = np.clip(np.rint(images.astype(np.float64)/scale), lower, upper)
    encoded[~valid] = lower
    raw = encoded.astype(np.int16)
    multiplier = int(np.rint(255*(1 << 16)/(upper-lower)))
    distance = raw.astype(np.int64)-lower
    codes = np.clip((distance*multiplier+32768) >> 16, 0, 255).astype(np.uint8)
    return codes.astype(np.float32)/256.


def normalized_views(volume, mask, contract, axial=True):
    prep = contract['spatial']
    b, bm = coronal_slices(volume, mask, contract['coronal'])
    c, cm = sagittal_slices(volume, mask, prep, contract['sagittal_indices'])
    result = {
        'b': normalize_coronal(b, bm, contract['scales']['b']),
        'c': normalize_variable(c, cm, contract['scales']['c'], [1, 99]),
    }
    if axial:
        a, am = spatial_slices(volume, mask, {**prep, 'axial_indices': contract['axial_indices']})
        result['a'] = normalize_variable(a, am, contract['scales']['a'], [1, 99])
    return {k: torch.from_numpy(v.transpose(0, 3, 1, 2).copy()) for k, v in result.items()}


def read_volume(raw_root, row, contract):
    root = Path(raw_root).resolve()
    paths = [(root/row[k]).resolve() for k in ('image_path','segmentation_path')]
    if not all(p.is_relative_to(root) for p in paths):
        raise ValueError('MRI paths must stay within --raw-root')
    loaded = [nib.load(p) for p in paths]
    v = np.asarray(loaded[0].dataobj).squeeze().astype(np.float32)
    labels = np.asarray(loaded[1].dataobj).squeeze()
    if v.shape != tuple(contract['shape']) or labels.shape != v.shape:
        raise ValueError('Expected prealigned T88 disk grid 176x208x176')
    for image in loaded:
        if not np.allclose(image.header.get_zooms()[:3], [1,1,1]) or image.header.endianness != '>':
            raise ValueError('Expected official big-endian OASIS-1 Analyze files with 1 mm voxels')
    if not np.isfinite(v).all() or not np.isfinite(labels).all():
        raise ValueError('Nonfinite MRI or segmentation')
    if not set(np.unique(labels).tolist()) <= {0,1,2,3}:
        raise ValueError('Unexpected FSL_SEG labels')
    mask = labels > 0
    if not mask.any() or np.ptp(v[mask]) == 0:
        raise ValueError('Empty or constant brain')
    # Label is supervised metadata, never supplied as an image/model feature.
    session_root = paths[0].parents[3]
    txt = (session_root/(row['session_id']+'.txt')).read_text(encoding='utf-8', errors='replace')
    match = re.search(r'^CDR:\s*([^\r\n]+)', txt, flags=re.MULTILINE)
    if match is None or float(match[1]) != row['cdr']:
        raise ValueError('Training label conflicts with the source CDR record')
    return v, mask


@torch.inference_mode()
def mean_features(encoder, images, branch, device):
    # These batch boundaries match the original B/C feature preparation.
    chunks = images.split(38 if branch == 'b' else 32)
    return torch.cat([encoder(x.to(device)).cpu() for x in chunks]).mean(0)


def validate_cohort(cohort, profile):
    rows = cohort['subjects']
    ids = [r['subject_id'] for r in rows]
    if len(ids) != len(set(ids)) or len(ids) != 158:
        raise ValueError('Frozen cohort requires 158 unique training subjects')
    members = set(ids)
    for row in rows:
        if not re.fullmatch(r'OAS1_\d{4}', row['subject_id']) or not re.fullmatch(re.escape(row['subject_id'])+r'_MR\d+', row['session_id']):
            raise ValueError('Invalid OASIS subject/session identifier')
        if row['cdr'] not in (0.,.5,1.,2.):
            raise ValueError('Unexpected CDR label')
        expected = 0 if row['cdr'] == 0 else (1 if row['cdr'] == .5 else 2)
        if row['label'] != expected:
            raise ValueError('CDR/three-class label mismatch')
    by_id = {r['subject_id']:r for r in rows}
    for branch, settings in profile['branches'].items():
        group = cohort['groups'][settings['group']]
        if len(group) != len(set(group)) or len(group) != settings['fit_n'] or not set(group) <= members:
            raise ValueError('Invalid ordered fit partition: '+branch)
    if cohort['groups']['bc_refit'] != ids:
        raise ValueError('Subject order differs from the selected training recipe')
    positives = [s for s in ids if by_id[s]['label'] > 0]
    if cohort['groups']['s_refit'] != positives:
        raise ValueError('S must use all true positives in the same ordered BC fit cohort')


def prepare(raw_root, cohort_path, output, profile, device):
    cohort = read_json(cohort_path)
    validate_cohort(cohort, profile)
    contract = read_json(PROJECT/'shared/model_contract/system_frozen_20261022.json')
    if contract['epochs'] != {b:s['epochs'] for b,s in profile['branches'].items()}:
        raise ValueError('Training epochs do not match the frozen model contract')
    if device == 'cuda' and not torch.cuda.is_available():
        raise RuntimeError('CUDA unavailable; use --device cpu explicitly if required')
    weight = classification_bundle()/'resnet18_imagenet_backbone.pt'
    encoder = FrozenEncoder(weight).to(device).eval()
    output = Path(output)
    output.mkdir(parents=True, exist_ok=False)
    (output/'subjects').mkdir()
    shutil.copy2(weight, output/weight.name)
    axial = set(cohort['groups']['a_fit'])
    for n, row in enumerate(cohort['subjects'],1):
        v, mask = read_volume(raw_root, row, contract)
        views = normalized_views(v, mask, contract, axial=row['subject_id'] in axial)
        values = {b:mean_features(encoder,views[b],b,device).numpy() for b in ('b','c')}
        if 'a' in views:
            values['a'] = views['a'].numpy()
        with (output/'subjects'/(row['subject_id']+'.npz')).open('xb') as f:
            np.savez_compressed(f, **values)
        print(f'Prepared {n}/{len(cohort["subjects"])}', flush=True)
    with weight.open('rb') as f:
        digest = hashlib.file_digest(f,'sha256').hexdigest()
    # Written last: an interrupted preparation cannot be consumed as a full cache.
    write_json(output/'dataset.json', {'profile':profile,'cohort':cohort,'contract':contract,
        'device':device,'torch':torch.__version__,'encoder_sha256':digest})
    print('TRAINING_CACHE_READY='+str(output))


def load_branch(cache, metadata, branch):
    profile, cohort = metadata['profile'], metadata['cohort']
    validate_cohort(cohort, profile)
    rows = {r['subject_id']:r for r in cohort['subjects']}
    ids = cohort['groups'][profile['branches'][branch]['group']]
    values, labels = [], []
    for sid in ids:
        with np.load(Path(cache)/'subjects'/(sid+'.npz'), allow_pickle=False) as z:
            value = np.concatenate([z['b'],z['c']]) if branch == 's' else z[branch].copy()
        expected = (34,1,128,128) if branch == 'a' else (1024 if branch == 's' else 512,)
        if value.shape != expected or value.dtype != np.float32 or not np.isfinite(value).all():
            raise ValueError('Invalid cached training input: '+sid)
        values.append(torch.from_numpy(value))
        labels.append(rows[sid]['label']-1 if branch == 's' else int(rows[sid]['label']>0))
    return torch.stack(values), torch.tensor(labels,dtype=torch.long)
