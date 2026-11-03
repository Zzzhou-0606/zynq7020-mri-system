"""Copied physical-grid checks; no experiment or clinical data access."""
import numpy as np

def valid_affine(affine):
    affine = np.asarray(affine, dtype=float)
    if affine.shape != (4, 4) or not np.isfinite(affine).all():
        raise ValueError("Affine must be a finite 4x4 matrix")
    if not np.allclose(affine[3], (0, 0, 0, 1), rtol=0, atol=1e-8):
        raise ValueError("Invalid homogeneous affine")
    determinant = float(np.linalg.det(affine[:3, :3]))
    if not np.isfinite(determinant) or abs(determinant) <= 1e-12:
        raise ValueError("Singular physical voxel geometry")
    return affine, abs(determinant)

def valid_labels(labels):
    labels = np.asarray(labels)
    if labels.ndim != 3 or any(v <= 0 for v in labels.shape):
        raise ValueError("Segmentation must have a nonempty three-dimensional grid")
    if not np.isfinite(labels).all():
        raise ValueError("Segmentation contains nonfinite labels")
    if np.any(labels < 0) or not np.array_equal(labels, np.rint(labels)):
        raise ValueError("Hard segmentation labels must be nonnegative integers")
    return labels

def validate_geometry(labels, seg_affine, image, image_affine):
    labels = valid_labels(labels)
    seg_affine, voxel_volume = valid_affine(seg_affine)
    image_affine, _ = valid_affine(image_affine)
    image = np.asarray(image)
    if image.shape != labels.shape or not np.isfinite(image).all():
        raise ValueError("Conformed image shape or finite values differ from segmentation")
    if not np.allclose(seg_affine, image_affine, rtol=1e-7, atol=1e-5):
        raise ValueError("Conformed image and segmentation physical geometry differ")
    if not np.ptp(image):
        raise ValueError("Conformed MRI is constant")
    return voxel_volume

def mask_for(labels, values):
    return np.isin(labels, values)

def world_centroid(labels, values, affine):
    positions = np.argwhere(mask_for(labels, values))
    if not len(positions):
        raise ValueError(f"Required labels have zero volume: {list(values)}")
    center = positions.mean(axis=0)
    return (affine[:3, :3] @ center + affine[:3, 3]).tolist()
