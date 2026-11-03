"""Copied eight-region hard-label measurements, not ICV or thickness."""
import numpy as np
import nibabel as nib
from host.segmentation.geometry import valid_affine, valid_labels, world_centroid

PAIR_LABELS = (
    ("hippocampus", (17,), (53,)),
    ("entorhinal", (1006,), (2006,)),
    ("inferiortemporal", (1009,), (2009,)),
    ("lateral_ventricles", (4, 5), (43, 44)),
)

def measure(labels, affine, representation, qc_settings):
    """Measure only the frozen label sets; no clinical metadata is accepted."""
    labels = valid_labels(labels)
    affine, voxel_volume = valid_affine(affine)
    names, groups = representation["feature_names"], representation["roi_labels"]
    if len(names) != 8 or len(groups) != 7:
        raise ValueError("Frozen eight-feature schema changed")
    unique, counts = np.unique(labels, return_counts=True)
    histogram = {int(k): int(v) for k, v in zip(unique, counts)}
    raw_counts = [sum(histogram.get(k, 0) for k in values) for values in groups]
    parenchyma_labels = set(representation["parenchyma_subcortical_labels"])
    for low, high in representation["parenchyma_cortical_label_ranges"]:
        parenchyma_labels.update(k for k in histogram if low <= k <= high)
    raw_counts.append(sum(histogram.get(k, 0) for k in parenchyma_labels))
    volumes = np.asarray(raw_counts, dtype=np.float64) * voxel_volume
    if np.any(volumes <= 0) or not np.isfinite(volumes).all():
        raise ValueError("Every predefined region must have finite positive volume")
    pairs, flags = {}, []
    for name, left, right in PAIR_LABELS:
        lc, rc = world_centroid(labels, left, affine), world_centroid(labels, right, affine)
        if not lc[0] < rc[0]:
            raise ValueError(f"Left/right RAS centroid order failed: {name}")
        lv = sum(histogram.get(v, 0) for v in left) * voxel_volume
        rv = sum(histogram.get(v, 0) for v in right) * voxel_volume
        pairs[name] = dict(left_centroid_ras_mm=lc, right_centroid_ras_mm=rc,
                           left_volume_mm3=lv, right_volume_mm3=rv,
                           left_right_ratio=lv/rv)
        # The ratio flag is fixed and descriptive, never an exclusion rule.
        low, high = qc_settings["review_flag_pair_volume_ratio_bounds"]
        if not low <= lv/rv <= high:
            flags.append(dict(kind="pair_ratio", region=name, value=lv/rv, bounds=[low, high]))
    for name, value, bounds in zip(names, volumes, qc_settings["review_flag_volume_bounds_mm3"]):
        if not bounds[0] <= value <= bounds[1]:
            flags.append(dict(kind="volume", feature=name, value=float(value), bounds=bounds))
    details = dict(
        voxel_volume_mm3=voxel_volume, affine_ras_mm=affine.tolist(),
        shape=list(labels.shape), axis_codes=list(nib.aff2axcodes(affine)),
        label_voxel_counts=histogram, feature_voxel_counts=raw_counts,
        volumes_mm3=volumes.tolist(), features=np.log(volumes).tolist(),
        feature_names=names, left_right_checks=pairs, review_flags=flags,
        hard_checks_passed=True, clinical_covariates_used=False,
        intracranial_volume=False, cortical_thickness=False, partial_volume_corrected=False)
    return np.log(volumes), details
