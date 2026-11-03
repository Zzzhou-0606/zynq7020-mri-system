"""Export the independent frozen weights to the dependency-free PS runtime."""
import argparse
import json
from pathlib import Path
import struct
import numpy as np
import torch
from training.reference.frozen_hierarchy import FrozenHierarchy
from shared.protocol.mri_v1 import MODEL_VERSION

MAGIC = b'MRIMOD2\0'
EPOCHS = (169, 12, 6, 2)


def model_tensors(model):
    tensors = {}
    for prefix in 'abcs':
        for name, value in getattr(model, prefix).state_dict().items():
            tensors[prefix + '.' + name] = value.detach().cpu().numpy().astype('<f4')
    for name, value in model.encoder.network.state_dict().items():
        if name.endswith('num_batches_tracked') or name.startswith('fc.'):
            continue
        tensors['r.' + name] = value.detach().cpu().numpy().astype('<f4')
    return tensors


def read_model(path):
    """Strict reader used to verify every exported dimension and float."""
    with Path(path).open('rb') as f:
        if f.read(8) != MAGIC:
            raise ValueError('Invalid model magic')
        version, count = struct.unpack('<II', f.read(8))
        if version != 2 or not 1 <= count <= 1000:
            raise ValueError('Invalid model header')
        contract_length, = struct.unpack('<I', f.read(4))
        if contract_length != len(MODEL_VERSION):
            raise ValueError('Invalid model contract length')
        if f.read(contract_length).decode('ascii') != MODEL_VERSION:
            raise ValueError('Wrong frozen model contract')
        if struct.unpack('<4I', f.read(16)) != EPOCHS:
            raise ValueError('Wrong frozen checkpoint epochs')
        tensors = {}
        for _ in range(count):
            name_length, ndim, numel = struct.unpack('<III', f.read(12))
            if not 1 <= name_length <= 256 or not 1 <= ndim <= 4 or not 1 <= numel <= 20000000:
                raise ValueError('Invalid tensor header')
            name = f.read(name_length).decode('ascii')
            dims = struct.unpack('<' + 'I' * ndim, f.read(ndim * 4))
            if int(np.prod(dims)) != numel or name in tensors:
                raise ValueError('Invalid tensor dimensions or duplicate name')
            value = np.frombuffer(f.read(numel * 4), '<f4').copy().reshape(dims)
            if not np.isfinite(value).all():
                raise ValueError('Nonfinite model tensor')
            tensors[name] = value
        if f.read(1):
            raise ValueError('Trailing model data')
    return tensors


def export(output):
    model = FrozenHierarchy(device='cpu')
    tensors = model_tensors(model)
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    with output.open('xb') as f:
        contract = model.contract['version'].encode('ascii')
        epochs = tuple(model.contract['epochs'][key] for key in 'abcs')
        if epochs != EPOCHS or contract.decode('ascii') != MODEL_VERSION:
            raise ValueError('Unexpected frozen contract')
        f.write(MAGIC + struct.pack('<III', 2, len(tensors), len(contract)))
        f.write(contract + struct.pack('<4I', *epochs))
        for name, value in tensors.items():
            encoded = name.encode('ascii')
            if not np.isfinite(value).all():
                raise ValueError('Nonfinite model: ' + name)
            f.write(struct.pack('<III', len(encoded), value.ndim, value.size))
            f.write(encoded)
            f.write(struct.pack('<' + 'I' * value.ndim, *value.shape))
            f.write(value.tobytes(order='C'))
    actual = read_model(output)
    if tensors.keys() != actual.keys() or any(not np.array_equal(v, actual[k]) for k, v in tensors.items()):
        raise RuntimeError('Export roundtrip changed tensor values')
    manifest = {'model_version': model.contract['version'], 'format': 'MRIMOD2',
                'precision': 'float32', 'epochs': model.contract['epochs'],
                'weights_abc': model.contract['weights_abc'], 'threshold': .5,
                'byte_length': output.stat().st_size, 'roundtrip_exact': True,
                'tensors': {k: list(v.shape) for k, v in tensors.items()},
                'runtime_file': output.name, 'clinical_validation': False}
    with output.with_suffix('.json').open('x', encoding='utf-8') as f:
        json.dump(manifest, f, indent=2)
        f.write('\n')
    return manifest


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output', type=Path, required=True)
    args = p.parse_args()
    result = export(args.output)
    print(json.dumps({k: v for k, v in result.items() if k != 'tensors'}, indent=2))


if __name__ == '__main__':
    main()
