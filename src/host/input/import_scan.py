"""Validate official OASIS-1 disk grids without inventing world coordinates."""
from pathlib import Path
import re
import nibabel as nib
import numpy as np

SHAPE = (176, 208, 176)


def load_t88(image_path, mask_path, *, confirmed_grid=False):
    if not confirmed_grid:
        raise ValueError('Confirm these are the frozen OASIS-1 T88 disk grid, without reorientation or resampling')
    image_path, mask_path = Path(image_path), Path(mask_path)
    image, mask_image = nib.load(image_path), nib.load(mask_path)
    volume = np.asarray(image.dataobj, dtype=np.float32).squeeze()
    labels = np.asanyarray(mask_image.dataobj).squeeze()
    if volume.shape != SHAPE or labels.shape != SHAPE:
        raise ValueError('T88 image and mask must both be 176 x 208 x 176')
    for item in (image, mask_image):
        if not np.allclose(item.header.get_zooms()[:3], (1, 1, 1), atol=1e-5, rtol=0):
            raise ValueError('Requires one millimeter voxels')
    if not np.allclose(image.affine, mask_image.affine, atol=1e-5, rtol=0):
        raise ValueError('Image and mask grid metadata differ')
    ids = [re.search(r'OAS1_\d{4}_MR\d+', p.name) for p in (image_path, mask_path)]
    if all(ids) and ids[0].group() != ids[1].group():
        raise ValueError('OASIS image and mask belong to different sessions')
    if not np.isfinite(volume).all() or not np.isfinite(labels).all():
        raise ValueError('Nonfinite input')
    official_fsl = '_t88_masked_gfc_fseg' in mask_path.name
    allowed = (0, 1, 2, 3) if official_fsl else (0, 1)
    if not np.isin(labels, allowed).all():
        raise ValueError('Expected binary mask or official FSL_SEG labels 0/1/2/3')
    mask = labels > 0
    if not mask.any() or np.ptp(volume[mask]) == 0:
        raise ValueError('Empty or constant brain')
    return volume, mask, dict(shape=list(SHAPE), spacing_mm=[1, 1, 1],
        input_space='official_T88_111_disk_grid', grid_confirmation=True,
        session_id=ids[0].group() if ids[0] else None,
        image_source=str(image_path.resolve()), mask_source=str(mask_path.resolve()),
        world_left_right_verified=False)


def load_native(path):
    path = Path(path)
    if path.suffix.lower() == '.hdr':
        if 'SUBJ_111' not in path.parts or not re.search(r'OAS1_\d{4}_MR\d+',str(path)):
            raise ValueError('Analyze native input must be the official OASIS-1 SUBJ_111 pair')
        from host.input.oasis_native import native_array, NATIVE_AFFINE
        values = native_array(path.read_bytes(),path.with_suffix('.img').read_bytes()).astype('int16')
        image = nib.Nifti1Image(values,NATIVE_AFFINE)
        image.set_qform(NATIVE_AFFINE,code=1)
        image.set_sform(NATIVE_AFFINE,code=1)
        image.header.set_xyzt_units('mm')
        return image
    image = nib.load(path)
    if not isinstance(image, (nib.Nifti1Image, nib.Nifti2Image)):
        raise ValueError('Native MRI must be geometry-validated NIfTI; use oasis_native for official SUBJ_111 conversion')
    if not (int(image.header['sform_code']) or int(image.header['qform_code'])):
        raise ValueError('Native MRI requires an explicit qform or sform')
    values = np.asanyarray(image.dataobj)
    if values.ndim != 3 or not np.isfinite(values).all() or np.ptp(values) == 0:
        raise ValueError('Native MRI must be a finite nonconstant 3D image')
    if image.header.get_xyzt_units()[0] != 'mm':
        raise ValueError('Native MRI geometry must explicitly use millimeters')
    if not np.isfinite(image.affine).all() or abs(np.linalg.det(image.affine[:3,:3])) < 1e-8:
        raise ValueError('Native MRI has invalid physical geometry')
    return image
