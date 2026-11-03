"""MRIMQV2 export for the fixed MRI accelerator ABI (independent of old demos)."""
import json
import struct
from pathlib import Path
import numpy as np

MAGIC = b'MRIMQV2\0'
HEADER = struct.Struct('<13I')
LAYER = struct.Struct('<IIIiiiII')


def export(graph, output):
    if graph.bits != 16:
        raise ValueError('Current RTL saturates to INT16; INT8 remains a software assessment')
    weights, biases, shifts, layers = [], [], [], []
    nw = nb = ns = 0
    for p in graph.parameters:
        w = p['weight'].cpu().numpy().astype('<i2').ravel()
        b = p['bias'].cpu().numpy().astype('<i8')
        s = p['shift'].cpu().numpy().astype('<i4')
        layers.append((nw, nb, ns, p['residual_shift'], p['input_exp'], p['output_exp'], 0, 0))
        weights.append(w); biases.append(b); shifts.append(s)
        nw += len(w); nb += len(b); ns += len(s)
    heads = {}
    for branch in 'abcs':
        for name, t in getattr(graph.model, branch).state_dict().items():
            if branch == 'a' and not name.startswith(('embedding.', 'classifier.')):
                continue
            heads[branch+'.'+name] = t.cpu().numpy().astype('<f4')
    contract = graph.model.contract['version'].encode('ascii')
    path = Path(output)
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open('xb') as f:
        f.write(MAGIC + HEADER.pack(2, 2, graph.bits, 24, nw, nb, ns, len(heads), len(contract), 169, 12, 6, 2))
        f.write(contract)
        for layer in layers:
            f.write(LAYER.pack(*layer))
        for array in weights + biases + shifts:
            f.write(array.tobytes())
        for name, a in heads.items():
            name_bytes = name.encode('ascii')
            f.write(struct.pack('<III', len(name_bytes), a.ndim, a.size))
            f.write(name_bytes + struct.pack('<'+'I'*a.ndim, *a.shape) + a.tobytes())
    actual = read(path)
    assert actual['layers'] == layers
    for key, arrays in [('weights', weights), ('biases', biases), ('shifts', shifts)]:
        assert np.array_equal(actual[key], np.concatenate(arrays))
    assert heads.keys() == actual['heads'].keys()
    assert all(np.array_equal(v, actual['heads'][k]) for k, v in heads.items())
    manifest = dict(format='MRIMQV2', abi=2, precision='int16', roundtrip_exact=True,
                    model_version=contract.decode(), quantization_version='frozen-int16-20261024-v2',
                    bytes=path.stat().st_size, epochs=dict(a=169,b=12,c=6,s=2),
                    rounding='symmetric nearest ties away from zero', activation='signed16',
                    weights='signed16 per output channel power of two', accumulator='signed64',
                    bn_folded=True, sum_output_divisors=dict(a=16,r=49),
                    layers=[dict(name=l['name'], shape=list(l['weight'].shape),
                                 input_exp=p['input_exp'],output_exp=p['output_exp'],
                                 residual_shift=p['residual_shift'],max_accumulator=p['max_accumulator'])
                            for l,p in zip(graph.layers,graph.parameters)])
    path.with_suffix('.json').write_text(json.dumps(manifest, indent=2)+'\n', encoding='utf-8')
    return manifest


def read(path):
    with Path(path).open('rb') as f:
        def take(n):
            value = f.read(n)
            if len(value) != n:
                raise ValueError('Truncated MRIMQV2 model')
            return value
        if take(8) != MAGIC:
            raise ValueError('Bad magic')
        version, abi, bits, nl, nw, nb, ns, nh, nc, *epochs = HEADER.unpack(take(HEADER.size))
        if (version, abi, bits, nl, epochs) != (2,2,16,24,[169,12,6,2]):
            raise ValueError('Unexpected ABI, precision, or epochs')
        if not (nw < 20000000 and nb == ns < 10000 and nh == 16 and nc < 128):
            raise ValueError('Invalid array lengths')
        if take(nc).decode('ascii') != 'system-frozen-20261022-v1':
            raise ValueError('Wrong frozen contract')
        layers = [LAYER.unpack(take(32)) for _ in range(nl)]
        weights = np.frombuffer(take(nw*2), '<i2').copy()
        biases = np.frombuffer(take(nb*8), '<i8').copy()
        shifts = np.frombuffer(take(ns*4), '<i4').copy()
        if ((shifts < -31) | (shifts > 62)).any():
            raise ValueError('Unsafe shifts')
        heads = {}
        for _ in range(nh):
            name_length, ndim, numel = struct.unpack('<III', take(12))
            if not (0 < name_length < 256 and 0 < ndim <= 4 and 0 < numel < 20000):
                raise ValueError('Invalid head tensor')
            name = take(name_length).decode('ascii')
            dims = struct.unpack('<'+'I'*ndim, take(ndim*4))
            if np.prod(dims) != numel or name in heads:
                raise ValueError('Head shape/name mismatch')
            a = np.frombuffer(take(numel*4), '<f4').copy().reshape(dims)
            if not np.isfinite(a).all():
                raise ValueError('Nonfinite head')
            heads[name] = a
        if f.read(1):
            raise ValueError('Trailing model data')
    return dict(layers=layers, weights=weights, biases=biases, shifts=shifts, heads=heads)
