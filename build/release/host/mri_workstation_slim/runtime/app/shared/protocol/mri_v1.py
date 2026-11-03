"""MRI task wire contract. Board-side validation uses only the standard library."""
import array
import math
from pathlib import Path
import struct
import sys

MODEL_VERSION = 'system-frozen-20261022-v1'
PROTOCOL_VERSION = 1
MAGIC = b'MRIRAW1\0'
COUNTS = {'a': 34, 'b': 38, 'c': 59}
SIDE = 128
HEADER = struct.Struct('<8s6I')
HEADER_BYTES = HEADER.pack(MAGIC, PROTOCOL_VERSION, 34, 38, 59, SIDE, SIDE)
INPUT_BYTES = HEADER.size + sum(COUNTS.values()) * SIDE * SIDE * 5


def validate_result(value, backend=None):
    """Reject inconsistent successful results instead of displaying a false class."""
    if not isinstance(value, dict):
        raise ValueError('Result must be an object')
    actual_backend = value.get('execution_backend')
    if actual_backend not in ('pl', 'ps_cpu_reference', 'software_reference') or (backend and actual_backend != backend):
        raise ValueError('Unexpected inference backend')
    if 'model_version' in value and value['model_version'] != MODEL_VERSION:
        raise ValueError('Unexpected model version')
    def probability(x):
        return type(x) in (int, float) and math.isfinite(x) and 0 <= x <= 1
    branches = value.get('probabilities_abc')
    if not isinstance(branches, list) or len(branches) != 3 or not all(probability(x) for x in branches):
        raise ValueError('Invalid branch probabilities')
    pd = value.get('probability_positive')
    if not probability(pd) or abs(pd - sum(w * p for w, p in zip((.427, .300, .273), branches))) > 2e-6:
        raise ValueError('Invalid fused probability')
    score = value.get('score')
    if type(score) not in (int, float) or not math.isfinite(score) or abs(score - 100 * pd) > 1e-4:
        raise ValueError('Invalid displayed score')
    positive = int(pd >= .5)
    if type(value.get('prediction')) is not int or value['prediction'] != positive:
        raise ValueError('Invalid classification routing')
    if positive:
        if value.get('severity_status') == 'incomplete':
            if (value.get('class_id') is not None or value.get('severity_probability') is not None
                    or not isinstance(value.get('severity_error'), str) or not value['severity_error'].strip()):
                raise ValueError('Partial severity failure requires null class and explicit error')
            return value
        ps = value.get('severity_probability')
        if (not probability(ps) or value.get('severity_status') != 'complete'
                or type(value.get('class_id')) is not int or value['class_id'] != 1 + int(ps >= .5)):
            raise ValueError('Invalid positive severity result')
    elif (value.get('severity_probability') is not None or value.get('severity_status') != 'not_applicable'
          or type(value.get('class_id')) is not int or value['class_id'] != 0):
        raise ValueError('Stage 2 must be inapplicable for a negative case')
    return value


def validate_input(path):
    """Reject malformed tensors before invoking the runtime; no NumPy on PS."""
    path = Path(path)
    if path.stat().st_size != INPUT_BYTES:
        raise ValueError('Invalid MRI input length')
    with path.open('rb') as stream:
        if stream.read(HEADER.size) != HEADER_BYTES:
            raise ValueError('Unsupported MRI input header')
        for key, count in COUNTS.items():
            for _ in range(count):
                values = array.array('f')
                values.frombytes(stream.read(SIDE * SIDE * 4))
                if sys.byteorder != 'little':
                    values.byteswap()
                if not all(math.isfinite(v) for v in values):
                    raise ValueError('Nonfinite MRI input: ' + key)
            for _ in range(count):
                mask = stream.read(SIDE * SIDE)
                if any(v > 1 for v in mask) or not any(mask):
                    raise ValueError('Nonbinary or empty slice mask: ' + key)
    return {'model_version': MODEL_VERSION, 'bytes': INPUT_BYTES,
            'counts': dict(COUNTS), 'height': SIDE, 'width': SIDE}


def write_input(path, views):
    """Serialize prepare_volume() raw views; normalization remains on the PS."""
    import numpy as np
    arrays = []
    for key, count in COUNTS.items():
        images, masks = (np.asarray(x) for x in views[key])
        expected = (count, SIDE, SIDE)
        if images.shape not in (expected, expected + (1,)) or masks.shape != images.shape:
            raise ValueError('Invalid view shape: ' + key)
        if not np.isfinite(images).all() or not np.isin(masks, [0, 1]).all():
            raise ValueError('Invalid view values: ' + key)
        if not masks.reshape(count, -1).any(1).all():
            raise ValueError('Empty slice mask: ' + key)
        images = np.asarray(images, dtype='<f4')
        if not np.isfinite(images).all():
            raise ValueError('Float32 overflow: ' + key)
        arrays.append((images, np.asarray(masks, dtype='u1')))
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    # Exclusive creation protects a previous task's submitted input.
    with path.open('xb') as stream:
        stream.write(HEADER_BYTES)
        for images, masks in arrays:
            stream.write(images.tobytes(order='C'))
            stream.write(masks.tobytes(order='C'))
    return path


def read_input(path):
    """Desktop reference decoder. Never required by the board service."""
    import numpy as np
    validate_input(path)
    result = {}
    with Path(path).open('rb') as stream:
        stream.seek(HEADER.size)
        for key, count in COUNTS.items():
            size = count * SIDE * SIDE
            images = np.frombuffer(stream.read(size * 4), '<f4').copy()
            masks = np.frombuffer(stream.read(size), 'u1').copy()
            result[key] = (images.reshape(count, SIDE, SIDE, 1),
                           masks.reshape(count, SIDE, SIDE, 1))
    return result
