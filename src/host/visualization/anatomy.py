"""Copied anatomy overlay generation using formal geometry helpers."""
import numpy as np
import nibabel as nib
from PIL import Image, ImageDraw
from scipy.ndimage import binary_erosion
from host.segmentation.geometry import mask_for

COLORS = (
    ((17, 53), (255, 145, 35)),
    ((1006, 2006), (30, 235, 180)),
    ((1009, 2009), (70, 150, 255)),
    ((4, 5, 43, 44), (245, 65, 100)),
)

def index_quantile(labels, values, axis, q=.5):
    positions = np.argwhere(mask_for(labels, values))
    if not len(positions):
        raise ValueError("Cannot render an absent target")
    return int(np.rint(np.quantile(positions[:, axis], q)))

def make_panel(index, seg_image, conformed_image, details, path):
    # Canonical orientation is a voxel permutation/flip only, not interpolation.
    seg = nib.as_closest_canonical(seg_image)
    image = nib.as_closest_canonical(conformed_image)
    labels, volume = np.asarray(seg.dataobj), np.asarray(image.dataobj)
    support = labels > 0
    low, high = np.percentile(volume[support], [1, 99])
    specifications = [
        ("hippo coronal", 1, (17, 53), .5),
        ("left hippo sagittal", 0, (17,), .5),
        ("right hippo sagittal", 0, (53,), .5),
        ("entorhinal coronal", 1, (1006, 2006), .5),
        ("left entorhinal sagittal", 0, (1006,), .5),
        ("right entorhinal sagittal", 0, (2006,), .5),
        ("inferior temporal coronal", 1, (1009, 2009), .5),
        ("ventricles axial 40%", 2, (4, 5, 43, 44), .4),
        ("ventricles axial 70%", 2, (4, 5, 43, 44), .7),
    ]
    canvas = Image.new("RGB", (720, 704), "#101010")
    draw = ImageDraw.Draw(canvas)
    v = details["volumes_mm3"]
    draw.text((6, 4), f"record_index={index}; hard-label volumes mm3; flags={len(details['review_flags'])}", fill="white")
    draw.text((6, 20), f"Hippo L/R {v[0]:.0f}/{v[1]:.0f}; Ento L/R {v[2]:.0f}/{v[3]:.0f}; IT L/R {v[4]:.0f}/{v[5]:.0f}", fill="white")
    draw.text((6, 36), f"LV total {v[6]:.0f}; parenchyma {v[7]:.0f}; cortex gray / hippo orange / ento green / IT blue / LV red", fill="white")
    for j, (title, axis, values, q) in enumerate(specifications):
        center = index_quantile(labels, values, axis, q)
        gray = np.flipud(np.take(volume, center, axis=axis).T)
        lab = np.flipud(np.take(labels, center, axis=axis).T)
        rgb = np.repeat(np.uint8(np.clip((gray-low)/max(high-low, 1e-9), 0, 1)*255)[..., None], 3, axis=-1)
        cortex = (lab >= 1000) & (lab <= 2999)
        border = cortex & ~binary_erosion(cortex)
        rgb[border] = (.6*rgb[border] + .4*np.asarray((185, 185, 185))).astype(np.uint8)
        for label_set, color in COLORS:
            selected = np.isin(lab, label_set)
            rgb[selected] = (.45*rgb[selected] + .55*np.asarray(color)).astype(np.uint8)
        x, y = (j % 3)*240, 62+(j//3)*214
        draw.text((x+4, y), f"{title}; plane {center}", fill="white")
        canvas.paste(Image.fromarray(rgb).resize((232, 194)), (x+4, y+17))
    canvas.save(path)
    return dict(panel_path=str(path), displayed_record_index=int(index),
                clinical_or_prediction_annotation=False, resampled_for_display=False,
                display_orientation="closest canonical RAS; sagittal/coronal superior up, axial anterior up",
                representative_sections=[dict(title=name, axis=axis,
                    index=index_quantile(labels, values, axis, q)) for name, axis, values, q in specifications])
