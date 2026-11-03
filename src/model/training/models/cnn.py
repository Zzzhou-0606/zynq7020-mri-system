"""Two independently instantiated networks with two output logits each."""

import torch
from torch import nn


class FourLayerCNN(nn.Module):
    def __init__(self, pooling='grid'):
        super().__init__()
        layers, channels_in = [], 1
        for channels in (16, 32, 64, 64):
            layers += [nn.Conv2d(channels_in, channels, 3, padding=1, bias=True),
                       nn.ReLU(), nn.MaxPool2d(2)]
            channels_in = channels
        self.features = nn.Sequential(*layers)
        self.pooling = pooling
        if pooling == 'grid':
            self.pool = nn.AvgPool2d(4, stride=4)
            self.head = nn.Sequential(nn.Linear(256, 32), nn.ReLU(), nn.Linear(32, 2))
        elif pooling == 'global':
            self.pool = nn.AdaptiveAvgPool2d(1)
            self.head = nn.Linear(64, 2)
        else:
            raise ValueError(f'Unknown pooling: {pooling}')

    def forward(self, images):
        if images.ndim != 4 or images.shape[1:] != (1, 128, 128):
            raise ValueError('CNN expects NCHW slices with shape [N,1,128,128]')
        features = self.pool(self.features(images))
        if self.pooling == 'grid':
            # Match the documented HWC flatten order despite PyTorch NCHW convolutions.
            features = features.permute(0, 2, 3, 1).contiguous()
        return self.head(torch.flatten(features, 1))
