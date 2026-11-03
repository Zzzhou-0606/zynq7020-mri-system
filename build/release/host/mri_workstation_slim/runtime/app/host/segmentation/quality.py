"""Copied output geometry validation, independent of experiment manifests."""
from pathlib import Path
from typing import Any
import nibabel as nib
import numpy as np

def validate_outputs(segmentation: Path, conformed: Path) -> dict[str, Any]:
    seg, image = nib.load(segmentation), nib.load(conformed)
    labels, values = np.asanyarray(seg.dataobj), np.asanyarray(image.dataobj)
    if seg.shape != image.shape or len(seg.shape) != 3:
        raise ValueError("Segmentation and conformed image shapes differ.")
    if not np.allclose(seg.affine, image.affine, rtol=0, atol=1e-5):
        raise ValueError("Segmentation and conformed image geometry differs.")
    if not np.allclose(seg.header.get_zooms(), (1, 1, 1), rtol=0, atol=1e-5):
        raise ValueError("The frozen pipeline requires one-millimeter voxels.")
    if not np.isfinite(labels).all() or not np.isfinite(values).all():
        raise ValueError("Non-finite output.")
    if np.any(labels < 0) or not np.array_equal(labels, np.rint(labels)):
        raise ValueError("Invalid discrete segmentation.")
    unique, counts = np.unique(labels, return_counts=True)
    return {
        "shape": [int(x) for x in seg.shape],
        "spacing_mm": [float(x) for x in seg.header.get_zooms()],
        "affine_ras": seg.affine.tolist(),
        "axis_codes": list(nib.aff2axcodes(seg.affine)),
        "labels_voxel_counts": {str(int(k)): int(v) for k, v in zip(unique, counts)},
        "discrete_labels": True,
        "conformed_and_segmentation_geometry_equal": True,
        "voxel_volume_mm3": float(abs(np.linalg.det(seg.affine[:3, :3]))),
        "anatomical_visual_acceptance": "pending_separate_blinded_review",
    }
