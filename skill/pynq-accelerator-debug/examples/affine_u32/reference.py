"""Fixed unsigned contract: y = (3*x + 7) modulo 2**32."""
import numpy as np


def golden(x):
    x = np.asarray(x)
    if x.dtype != np.dtype('uint32') or x.ndim != 1 or not x.size:
        raise ValueError('Expected nonempty 1D native uint32')
    # Widen before arithmetic, then mask explicitly: no implicit overflow warning.
    return ((x.astype(np.uint64) * 3 + 7) & np.uint64(0xffffffff)).astype(np.uint32)


def sample(n=100, seed=20261025):
    if not 1 <= n <= 4095:
        raise ValueError('Example length must be 1..4095 elements')
    x = np.random.default_rng(seed).integers(0, 2**32, n, dtype=np.uint32)
    boundary = np.array([0, 1, 0xffffffff, 0x80000000, 0x55555555], dtype=np.uint32)
    x[:min(n, len(boundary))] = boundary[:min(n, len(boundary))]
    return x
