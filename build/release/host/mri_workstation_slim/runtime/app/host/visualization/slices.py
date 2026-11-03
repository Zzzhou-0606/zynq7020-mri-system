"""Anatomical color overlay in a validated segmentation/conformed image grid."""
from io import BytesIO
import nibabel as nib
import numpy as np
from PIL import Image, ImageDraw, ImageOps
from host.segmentation.geometry import validate_geometry
from host.visualization.anatomy import COLORS, index_quantile


def raw_previews(volume, mask):
    """T88 disk-grid previews intentionally omit unverified anatomical L/R."""
    low, high = np.percentile(np.asarray(volume)[np.asarray(mask,dtype=bool)],(1,99))
    outputs=[]
    for index in (47,64,80):
        gray=np.flipud(np.asarray(volume)[:,:,index].T)
        picture=Image.fromarray(np.uint8(255*np.clip((gray-low)/max(high-low,1e-6),0,1))).convert('RGB')
        canvas=Image.new('RGB',(256,240),'#101926')
        picture=ImageOps.contain(picture,(256,212))
        canvas.paste(picture,((256-picture.width)//2,28+(212-picture.height)//2))
        ImageDraw.Draw(canvas).text((6,8),f'T88 disk grid z={index}; no labels',fill='white')
        buffer=BytesIO();canvas.save(buffer,format='PNG');outputs.append(buffer.getvalue())
    return outputs


class SliceViewer:
    def __init__(self, image_path, labels_path):
        original_image, original_seg = nib.load(image_path), nib.load(labels_path)
        validate_geometry(np.asanyarray(original_seg.dataobj), original_seg.affine,
                          np.asanyarray(original_image.dataobj), original_image.affine)
        self.image = nib.as_closest_canonical(original_image)
        self.seg = nib.as_closest_canonical(original_seg)
        self.volume = np.asarray(self.image.dataobj, dtype=np.float32)
        self.labels = np.asanyarray(self.seg.dataobj)
        if not (self.labels > 0).any():
            raise ValueError('Segmentation is empty')
        self.low, self.high = np.percentile(self.volume[self.labels > 0], (1, 99))

    def render(self, axis, index, size=(720, 580), alpha=.55):
        if axis not in (0, 1, 2) or not 0 <= index < self.volume.shape[axis]:
            raise ValueError('Invalid slice')
        gray = np.flipud(np.take(self.volume, index, axis=axis).T)
        labels = np.flipud(np.take(self.labels, index, axis=axis).T)
        gray = np.uint8(255*np.clip((gray-self.low)/max(self.high-self.low, 1e-6), 0, 1))
        rgb = np.repeat(gray[...,None], 3, axis=2)
        for ids, color in COLORS:
            select = np.isin(labels, ids)
            rgb[select] = (rgb[select]*(1-alpha) + np.asarray(color)*alpha).astype(np.uint8)
        canvas = Image.new('RGB', size, '#101926')
        picture = ImageOps.contain(Image.fromarray(rgb), (size[0], max(1,size[1]-32)))
        canvas.paste(picture, ((size[0]-picture.width)//2, 28+(size[1]-32-picture.height)//2))
        orientation = ('Sagittal: posterior left / superior up', 'Coronal: L left / superior up', 'Axial: L left / anterior up')[axis]
        ImageDraw.Draw(canvas).text((8,8), f'{orientation} | slice {index}', fill='white')
        return canvas

    def key_previews(self):
        specs = [(1,(17,53)), (0,(17,)), (0,(53,))]
        images = []
        for axis, ids in specs:
            try:
                index = index_quantile(self.labels, ids, axis)
            except ValueError:
                index = self.labels.shape[axis]//2
            buffer = BytesIO()
            self.render(axis,index,(256,240)).save(buffer,format='PNG')
            images.append(buffer.getvalue())
        return images
