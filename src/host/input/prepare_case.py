"""Prepare raw frozen views without loading model weights or clinical labels."""
import json
from pathlib import Path
import numpy as np
from training.data_pipeline.frozen_views import spatial_slices, coronal_slices, sagittal_slices

PROJECT = Path(__file__).resolve().parents[2]


def prepare_volume(volume, brain_mask):
    contract = json.loads((PROJECT / 'shared/model_contract/system_frozen_20261022.json').read_text(encoding='utf-8'))
    volume, brain_mask = np.asarray(volume), np.asarray(brain_mask)
    if volume.shape != tuple(contract['shape']) or brain_mask.shape != volume.shape:
        raise ValueError('Requires existing T88 1mm disk grid; no registration performed')
    if not np.isfinite(volume).all() or not np.isin(brain_mask, [0, 1]).all() or not brain_mask.any():
        raise ValueError('Invalid MRI or binary brain mask')
    prep = contract['spatial']
    return {
        'a': spatial_slices(volume, brain_mask, {**prep, 'axial_indices': contract['axial_indices']}),
        'b': coronal_slices(volume, brain_mask, contract['coronal']),
        'c': sagittal_slices(volume, brain_mask, prep, contract['sagittal_indices']),
    }
