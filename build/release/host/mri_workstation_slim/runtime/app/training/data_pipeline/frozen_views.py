"""Frozen spatial sampling copied without experiment-runner imports."""
import numpy as np
from scipy.ndimage import map_coordinates

def spatial_slices(volume, mask, config):
    size, canvas = config['output_size'], config['canvas_size']
    width, height = volume.shape[:2]
    if max(width, height) > canvas:
        raise ValueError('Canvas would crop the atlas grid')
    # Square physical field of view, centered padding, pixel-center aligned sampling.
    # Preserve disk-grid handedness; axis 2 is transverse per the OASIS fact sheet.
    offset = ((np.arange(size) + 0.5) * canvas / size - 0.5)
    x = offset - (canvas - width) / 2
    y = offset - (canvas - height) / 2
    xx, yy = np.meshgrid(x, y, indexing='xy')
    output, masks = [], []
    for z in config['axial_indices']:
        if not 0 <= z < volume.shape[2]:
            raise ValueError('Axial index out of grid')
        plane = map_coordinates(volume[:, :, z], [xx, yy], order=1,
                                mode='constant', cval=0, prefilter=False)
        plane_mask = map_coordinates(mask[:, :, z].astype(np.uint8), [xx, yy], order=0,
                                     mode='constant', cval=0, prefilter=False).astype(bool)
        if plane_mask.mean() < config['minimum_slice_mask_fraction']:
            raise ValueError(f'insufficient_brain_coverage_at_grid_z_{z}')
        output.append(np.where(plane_mask, plane, 0))
        masks.append(plane_mask)
    return np.asarray(output, dtype='<f4')[..., None], np.asarray(masks, dtype=np.uint8)[..., None]

def coordinates(config):
    size = config['output_size']
    offsets = (np.arange(size) + .5 - size / 2) * config['crop_field_mm'] / size / config['source_voxel_mm']
    x = config['crop_center_xz'][0] + offsets
    z = config['crop_center_xz'][1] - offsets
    # Rows run superior to inferior; columns keep the original disk x direction.
    return np.meshgrid(x, z, indexing='xy')

def coronal_slices(volume, mask, config):
    xx, zz = coordinates(config)
    if min(xx.min(), zz.min()) < 0 or xx.max() >= volume.shape[0] or zz.max() >= volume.shape[2]:
        raise ValueError('Requested field extends beyond source grid')
    images, masks = [], []
    for y in config['coronal_indices']:
        coords = [xx, zz]
        plane = map_coordinates(volume[:, y, :], coords, order=1, prefilter=False, mode='constant', cval=0)
        brain = map_coordinates(mask[:, y, :].astype(np.uint8), coords, order=0, prefilter=False, mode='constant', cval=0)
        if not brain.any():
            raise ValueError('Empty local coronal plane')
        images.append(plane[..., None]); masks.append(brain[..., None])
    return np.stack(images).astype(np.float32), np.stack(masks).astype(np.uint8)

def sagittal_slices(v, m, prep, indices):
    # Disk x fixes the sagittal plane; columns follow disk y and rows descend in z.
    x, mask = spatial_slices(np.moveaxis(v, 0, -1), np.moveaxis(m, 0, -1),
        {**prep, 'axial_indices': indices})
    return x[:, ::-1].copy(), mask[:, ::-1].copy()
