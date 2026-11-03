"""Deployment copies of the selected frozen model structures.

The parameter names and arithmetic follow the 2026-10-22 freeze. No imports
from experiment directories and no automatic weight download are used.
"""
import torch
from torch import nn
from torch.nn import functional as F
from torchvision.models import resnet18
from training.models.cnn import FourLayerCNN


class AxialMeanModel(nn.Module):
    def __init__(self):
        super().__init__()
        base = FourLayerCNN('grid')
        self.features, self.pool = base.features, base.pool
        self.embedding = nn.Sequential(base.head[0], base.head[1])
        self.classifier = nn.Linear(32, 2)

    def encode(self, images):
        if images.ndim != 5 or images.shape[2:] != (1, 128, 128) or images.shape[1] < 1:
            raise ValueError('Expected [subjects,K,1,128,128]')
        batch, slices = images.shape[:2]
        features = self.pool(self.features(images.flatten(0, 1)))
        features = features.permute(0, 2, 3, 1).contiguous().flatten(1)
        return self.embedding(features).reshape(batch, slices, 32)

    def forward(self, images):
        return self.classifier(self.encode(images).mean(1))


class FrozenEncoder(nn.Module):
    def __init__(self, weight_file):
        super().__init__()
        self.network = resnet18(weights=None)
        self.network.load_state_dict(torch.load(weight_file, map_location='cpu', weights_only=True), strict=True)
        self.network.fc = nn.Identity()
        self.requires_grad_(False)
        self.register_buffer('mean', torch.tensor([.485, .456, .406]).reshape(1, 3, 1, 1))
        self.register_buffer('std', torch.tensor([.229, .224, .225]).reshape(1, 3, 1, 1))
        self.eval()

    def train(self, mode=True):
        return super().train(False)

    def transform(self, images):
        if images.ndim != 4 or images.shape[1:] != (1, 128, 128):
            raise ValueError('Expected normalized grayscale planes [K,1,128,128]')
        rgb = (images * (256 / 255)).expand(-1, 3, -1, -1)
        rgb = F.interpolate(rgb, size=(224, 224), mode='bilinear', align_corners=False, antialias=True)
        return (rgb - self.mean) / self.std

    def forward(self, images):
        return self.network(self.transform(images))


class StandardizedHead(nn.Module):
    def __init__(self, dimension):
        super().__init__()
        self.register_buffer('mean', torch.zeros(dimension))
        self.register_buffer('std', torch.ones(dimension))
        self.classifier = nn.Linear(dimension, 2)

    def forward(self, features):
        return self.classifier((features - self.mean) / self.std)
