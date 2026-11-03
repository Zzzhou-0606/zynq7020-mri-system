"""PS statistics/int16 encoding followed by the proposed PL integer mapping."""

import math

import numpy as np


def validate_session(images, masks, expected_slices=8):
    images, masks = np.asarray(images), np.asarray(masks)
    if images.shape != (expected_slices, 128, 128, 1) or masks.shape != images.shape:
        raise ValueError('missing_slices_or_invalid_shape')
    if not np.isfinite(images).all() or not np.isfinite(masks).all():
        raise ValueError('nonfinite_input')
    if not np.isin(masks, [0, 1]).all():
        raise ValueError('nonbinary_mask')
    if np.any(masks.sum(axis=(1, 2, 3)) == 0):
        raise ValueError('empty_slice_mask')


def scale_from_maximum(maximum):
    if not math.isfinite(maximum) or maximum <= 0:
        raise ValueError('invalid_training_intensity_range')
    # Power-of-two scale preserves fractional precision and reserves rounding headroom.
    return float(2.0 ** math.ceil(math.log2(maximum / 32760.0)))


def normalize(images, masks, raw_scale, percentiles=(1, 99)):
    validate_session(images, masks)
    if not math.isfinite(raw_scale) or raw_scale <= 0:
        raise ValueError('invalid_raw_scale')
    valid = masks.astype(bool)
    low, high = np.percentile(images[valid].astype(np.float64), percentiles, method='linear')
    lower, upper = int(np.rint(low / raw_scale)), int(np.rint(high / raw_scale))
    if not -32768 <= lower < upper <= 32767:
        raise ValueError('degenerate_or_out_of_range_percentile_bounds')
    encoded = np.rint(images.astype(np.float64) / raw_scale)
    if np.any((encoded[valid] < -32768) | (encoded[valid] > 32767)):
        raise ValueError('int16_overflow; do_not_clip_or_refit_on_validation_test')
    encoded[~valid] = lower
    raw = encoded.astype(np.int16)
    multiplier = int(np.rint(255 * (1 << 16) / (upper - lower)))
    distance = np.clip(raw.astype(np.int64) - lower, 0, upper - lower)
    codes = np.clip((distance * multiplier + 32768) >> 16, 0, 255).astype(np.uint8)
    output = codes.astype(np.float32) / 256.0
    return output, {
        'L': lower, 'H': upper, 'M': multiplier, 'raw_scale': raw_scale,
        'rounding': 'nearest_ties_to_even_for_r_L_H_M;add_half_then_shift_for_q',
        'maximum_encoding_error': float(np.max(np.abs(raw[valid].astype(np.float64) * raw_scale - images[valid]))),
    }
