"""Frozen 24-convolution graph, BN folding, and explicit integer arithmetic.

Exponent convention matches shared/accelerator/mri_v2.hpp: q = real * 2**e.
No retraining, altered slices, normalization, or classifier thresholds.
"""
import math
import numpy as np
import torch
from torch.nn import functional as F


def round_away(x):
    return torch.sign(x) * torch.floor(torch.abs(x) + .5)


def exponent(peak, bits):
    if not math.isfinite(peak) or peak < 0:
        raise ValueError('Invalid calibration peak')
    return min(24, max(-24, math.floor(math.log2(((1 << (bits-1))-1) / max(peak * 1.05, 1e-12)))))


def shift_integer(x, shifts):
    """Symmetric nearest, ties away; input/output int64. Shift bounds are checked."""
    s = torch.as_tensor(shifts, dtype=torch.int64, device=x.device)
    if bool(((s < -31) | (s > 62)).any()):
        raise ValueError('Unsafe requantization shift')
    right = s.clamp(min=0)
    # Divide unsigned magnitude then restore sign; no arithmetic-right negative bias.
    mag = torch.abs(x)
    rounded = (mag >> right) + ((right > 0) & ((mag & ((1 << right)-1)) >= (1 << (right-1).clamp(min=0)))).to(torch.int64)
    return torch.sign(x) * (rounded << (-s).clamp(min=0))


class QuantGraph:
    def __init__(self, model, bits=None, ranges=None, exact=True):
        self.model, self.device, self.bits, self.exact = model, model.device, bits, exact
        self.layers, self.ranges = [], {} if ranges is None else dict(ranges)
        self.parameters = []
        self._add('a.features.0', model.a.features[0], None, 1, 1)
        self._add('a.features.3', model.a.features[3], None, 1, 1)
        self._add('a.features.6', model.a.features[6], None, 1, 1)
        self._add('a.features.9', model.a.features[9], None, 1, 1)
        r = model.encoder.network
        self._add('r.conv1', r.conv1, r.bn1, 2, 3)
        self.blocks = []
        for stage in range(1, 5):
            for block in range(2):
                b = getattr(r, f'layer{stage}')[block]
                prefix = f'r.layer{stage}.{block}'
                first = len(self.layers)
                self._add(prefix+'.conv1', b.conv1, b.bn1, b.conv1.stride[0], 1)
                self._add(prefix+'.conv2', b.conv2, b.bn2, 1, 1)
                projection = None
                if b.downsample is not None:
                    projection = len(self.layers)
                    self._add(prefix+'.downsample.0', b.downsample[0], b.downsample[1], 2, 0)
                self.blocks.append((first, first+1, projection))
        if bits is not None:
            if bits not in (8, 16):
                raise ValueError('Only signed INT8/16 supported')
            self._quantize_parameters()

    def _add(self, name, conv, bn, stride, pad):
        # Fold with float64 then round once to FP32. No destructive model edits.
        w = conv.weight.detach().double()
        b = torch.zeros(w.shape[0], dtype=torch.float64, device=w.device) if conv.bias is None else conv.bias.detach().double()
        if bn is not None:
            scale = bn.weight.detach().double() / torch.sqrt(bn.running_var.double()+bn.eps)
            w = w * scale[:, None, None, None]
            b = (b-bn.running_mean.double())*scale + bn.bias.detach().double()
        self.layers.append(dict(name=name, weight=w.float(), bias=b.float(), stride=stride, pad=pad))

    def observe(self, key, x):
        self.ranges[key] = max(self.ranges.get(key, 0.), float(x.abs().max()))
        return x

    def _quantize_parameters(self):
        a_in = exponent(self.ranges['a.input'], self.bits)
        r_in = exponent(self.ranges['r.input'], self.bits)
        prev = a_in
        exps = []
        for i in range(4):
            out = exponent(self.ranges[self.layers[i]['name']], self.bits)
            exps.append((prev, out, 0)); prev = out
        stem = exponent(self.ranges['r.conv1'], self.bits)
        exps.append((r_in, stem, 0)); prev = stem
        for first, second, projection in self.blocks:
            one = exponent(self.ranges[self.layers[first]['name']], self.bits)
            two = exponent(self.ranges[self.layers[second]['name']], self.bits)
            exps.extend([(prev, one, 0), (one, two, prev-two if projection is None else 0)])
            if projection is not None:
                exps.append((prev, two, 0))
            prev = two
        for layer, (ein, eout, rs) in zip(self.layers, exps):
            w, b = layer['weight'].double(), layer['bias'].double()
            ew = torch.tensor([exponent(float(v), self.bits) for v in w.abs().flatten(1).max(1).values], device=self.device, dtype=torch.int64)
            qw = round_away(w*torch.pow(2., ew[:, None, None, None])).to(torch.int64)
            qb = round_away(b*torch.pow(2., ein+ew)).to(torch.int64)
            shifts = ein+ew-eout
            if bool(((shifts < -31) | (shifts > 62)).any()):
                raise ValueError('Shift cannot fit hardware ABI')
            # Bound the sum of absolute products (including every partial sum).
            bound = qw.abs().flatten(1).sum(1)*(1 << (self.bits-1)) + qb.abs()
            if bool((bound >= (1 << 52)).any()):
                raise ValueError('Integer convolution exceeds exact FP64 reference bound')
            # Requantized intermediates plus residual must fit signed63 as well.
            shifted_bound = torch.where(shifts >= 0, (bound >> shifts.clamp(min=0))+1,
                                        bound << (-shifts).clamp(min=0))
            if bool((shifted_bound >= (1 << 61)).any()):
                raise ValueError('Wide residual arithmetic could overflow')
            self.parameters.append(dict(weight=qw, bias=qb, shift=shifts, input_exp=ein, output_exp=eout,
                                        residual_shift=rs, max_accumulator=int(bound.max())))

    def quant_input(self, x, mode):
        p = self.parameters[0 if mode == 'a' else 4]
        return round_away(x.double() * 2.**p['input_exp']).clamp(-(1 << (self.bits-1)), (1 << (self.bits-1))-1).to(torch.int64)

    def conv(self, x, index):
        layer = self.layers[index]
        if self.bits is None:
            return F.conv2d(x, layer['weight'], layer['bias'], stride=layer['stride'], padding=layer['pad'])
        p = self.parameters[index]
        dtype = torch.float64 if self.exact else torch.float32
        # Exact reference: operands are integers and every partial sum <2**52.
        # TF32 disabled by runner; float64 multiplication/sum is exact here.
        acc = F.conv2d(x.to(dtype), p['weight'].to(dtype), None,
                       stride=layer['stride'], padding=layer['pad'])
        acc = torch.round(acc).to(torch.int64) + p['bias'][None, :, None, None]
        return shift_integer(acc, p['shift'][None, :, None, None])

    def finish(self, x, index):
        if self.bits is None:
            return self.observe(self.layers[index]['name'], x.relu())
        return x.clamp(0, (1 << (self.bits-1))-1)

    def pool(self, x, kernel, stride, pad=0):
        # Pooled values fit16bits, so float32 max returns exact integer values.
        y = F.max_pool2d(x.float(), kernel, stride, pad)
        return y.to(torch.int64) if self.bits else y

    @torch.inference_mode()
    def axial(self, x):
        x = self.observe('a.input', x) if self.bits is None else self.quant_input(x, 'a')
        for i in range(4):
            x = self.pool(self.finish(self.conv(x, i), i), 2, 2)
        if self.bits is None:
            grid = F.avg_pool2d(x, 4)
        else:
            # Exact int32 sums in the wire ABI; dequantization/mean is in PS.
            grid = x.reshape(len(x), 64, 2, 4, 2, 4).sum((3, 5)).double() / (16 * 2.**self.parameters[3]['output_exp'])
        return grid.permute(0, 2, 3, 1).contiguous().flatten(1).float()

    @torch.inference_mode()
    def resnet(self, x):
        x = self.observe('r.input', x) if self.bits is None else self.quant_input(x, 'r')
        x = self.pool(self.finish(self.conv(x, 4), 4), 3, 2, 1)
        for first, second, projection in self.blocks:
            skip = x
            y = self.finish(self.conv(x, first), first)
            y = self.conv(y, second)
            if projection is not None:
                skip = self.conv(skip, projection)
            elif self.bits is not None:
                skip = shift_integer(skip, self.parameters[second]['residual_shift'])
            x = self.finish(y + skip, second)
        if self.bits is None:
            return x.mean((2, 3))
        return (x.sum((2, 3)).double() / (49 * 2.**self.parameters[-1]['output_exp'])).float()

    @torch.inference_mode()
    def predict(self, images, chunk=8):
        aa = torch.cat([self.axial(x) for x in images[0].split(chunk)])
        feature_a = self.model.a.embedding(aa).mean(0, keepdim=True)
        scores = [float(self.model.a.classifier(feature_a).softmax(1)[0, 1])]
        means = []
        for images_view, head in [(images[1], self.model.b), (images[2], self.model.c)]:
            feature = torch.cat([self.resnet(self.model.encoder.transform(x)) for x in images_view.split(chunk)]).cpu().mean(0, keepdim=True)
            means.append(feature)
            scores.append(float(head(feature).softmax(1)[0, 1]))
        pd = float(np.dot(scores, [.427, .300, .273]))
        ps = float(self.model.severity(*means)[0])
        return dict(probabilities_abc=scores, probability_positive=pd, severity_probability_all=ps,
                    class_id=0 if pd < .5 else 1+int(ps >= .5))
