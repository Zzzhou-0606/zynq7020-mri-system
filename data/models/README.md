# 冻结模型输入

| 内容 | 位置 | 用途 |
|---|---|---|
| A169/B12/C6/S2 及 ResNet18 编码器权重 | classification/ | 上位机冻结模型推理及量化导出 |
| 三个方向 FastSurfer 权重 | segmentation/ | MRI 分割 |
| 已保存量化范围 | calibration.json | 导出 INT16 模型，不重新跑校准病例 |
| 已导出的部署模型 | [build/release/model](../../build/release/model/) | 板端 rootfs 打包及部署 |

训练入口、固定配置和训练索引见 [模型训练说明](../../src/model/README.md)。

模型结构、预处理和导出源码在 [src/model](../../src/model/)，使用方法见 [源码说明](../../src/README.md)。
本目录不包含历史训练轮次、实验比较、病例集或个人级校准记录。
