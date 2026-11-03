"""Unchanged variable-slice implementation from the twelve-slice batch."""
import math
import numpy as np
from training.reference.normalization import validate_session

def normalize_variable(images, masks, scale, percentiles):
    """Same V3 integer equations; validate the explicitly variable slice count."""
    validate_session(images, masks, expected_slices=len(images))
    if not math.isfinite(scale) or scale <= 0:
        raise ValueError('Invalid raw scale')
    valid = masks.astype(bool)
    low, high = np.percentile(images[valid].astype(np.float64), percentiles, method='linear')
    lower, upper = int(np.rint(low / scale)), int(np.rint(high / scale))
    if not -32768 <= lower < upper <= 32767:
        raise ValueError('Invalid percentile bounds')
    encoded = np.rint(images.astype(np.float64) / scale)
    if np.any((encoded[valid] < -32768) | (encoded[valid] > 32767)):
        raise ValueError('Encoding overflow; never refit scale on evaluation')
    encoded[~valid] = lower
    raw = encoded.astype(np.int16)
    multiplier = int(np.rint(255 * (1 << 16) / (upper - lower)))
    distance = np.clip(raw.astype(np.int64) - lower, 0, upper - lower)
    codes = np.clip((distance * multiplier + 32768) >> 16, 0, 255).astype(np.uint8)
    return codes.astype(np.float32) / 256.0
