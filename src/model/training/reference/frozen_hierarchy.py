"""Local deployment reference using copied weights and formal source modules.

This is a software reference, not a PL implementation or a board fallback.
The caller supplies the frozen T88 disk grid; registration is not performed.
"""
import json
from pathlib import Path
import numpy as np
import torch
from host.paths import classification_bundle
from training.models.frozen_three_view import AxialMeanModel, FrozenEncoder, StandardizedHead
from training.data_pipeline.frozen_views import spatial_slices, coronal_slices, sagittal_slices
from training.reference.frozen_normalization import normalize_variable

PROJECT = Path(__file__).resolve().parents[3]


class FrozenHierarchy:
    def __init__(self, device='cpu', bundle=None):
        self.device = torch.device(device)
        self.contract = json.loads((PROJECT / 'shared/model_contract/system_frozen_20261022.json').read_text(encoding='utf-8'))
        self.bundle = Path(bundle).resolve() if bundle is not None else classification_bundle()
        self.a = AxialMeanModel().to(self.device).eval()
        self.b, self.c, self.s = (StandardizedHead(n).eval() for n in (512, 512, 1024))
        for key in 'abcs':
            model = getattr(self, key)
            state = torch.load(self.bundle / self.contract['weights'][key], map_location='cpu', weights_only=True)
            if state['epoch'] != self.contract['epochs'][key]:
                raise ValueError('Unexpected checkpoint epoch: ' + key)
            model.load_state_dict(state['state_dict'], strict=True)
            model.requires_grad_(False)
        self.encoder = FrozenEncoder(self.bundle / self.contract['encoder']).to(self.device)

    def prepare(self, volume, mask):
        if volume.shape != (176, 208, 176) or mask.shape != volume.shape:
            raise ValueError('Requires pre-aligned T88 1mm disk grid176x208x176')
        if not np.isfinite(volume).all() or not np.isfinite(mask).all() or not np.isin(mask, [0, 1]).all() or not mask.any():
            raise ValueError('Require finite volume and nonempty binary brain mask')
        prep = self.contract['spatial']
        raw = [spatial_slices(volume, mask, {**prep, 'axial_indices': self.contract['axial_indices']}),
               coronal_slices(volume, mask, self.contract['coronal']),
               sagittal_slices(volume, mask, prep, self.contract['sagittal_indices'])]
        return [normalize_variable(*pair, self.contract['scales'][key], [1, 99]) for key, pair in zip('abc', raw)]

    @torch.inference_mode()
    def severity(self, coronal, sagittal):
        a, b = (torch.as_tensor(x, dtype=torch.float32, device='cpu') for x in (coronal, sagittal))
        if a.ndim != 2 or a.shape != b.shape or a.shape[1] != 512 or not len(a):
            raise ValueError('Expected matching [N,512] raw mean features')
        if not torch.isfinite(a).all() or not torch.isfinite(b).all():
            raise ValueError('Nonfinite mean features')
        return self.s(torch.cat([a, b], dim=1)).softmax(1)[:, 1].numpy()

    @torch.inference_mode()
    def predict_volume(self, volume, mask):
        images = [torch.from_numpy(x.transpose(0, 3, 1, 2).copy()).to(self.device)
                  for x in self.prepare(volume, mask)]
        scores = [float(self.a(images[0][None]).softmax(1)[0, 1])]
        means = []
        for x, head, chunk in [(images[1], self.b, 38), (images[2], self.c, 32)]:
            feature = torch.cat([self.encoder(part).cpu() for part in x.split(chunk)]).mean(0, keepdim=True)
            means.append(feature)
            scores.append(float(head(feature).softmax(1)[0, 1]))
        p = np.asarray(scores, dtype=np.float64)
        pd = float(.427 * p[0] + .300 * p[1] + .273 * p[2])
        result = {'execution_backend': 'software_reference', 'probabilities_abc': scores,
                  'probability_positive': pd, 'score': 100 * pd, 'prediction': int(pd >= .5),
                  'severity_probability': None, 'severity_status': 'not_applicable', 'class_id': 0}
        if pd >= .5:
            # Failure propagates rather than filling a valid-looking zero score.
            ps = float(self.severity(means[0], means[1])[0])
            result.update(severity_probability=ps, severity_status='complete', class_id=1 + int(ps >= .5))
        return result
