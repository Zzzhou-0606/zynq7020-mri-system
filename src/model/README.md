# 最终模型训练、推理与导出

## 配套范围

本目录提供 A169/B12/C6/S2 冻结版本的训练入口、网络结构、数据处理、推理和 INT16 导出。
训练入口为 [train.py](train.py)，实现为 [frozen.py](training/trainers/frozen.py)，
参数在 [frozen_training.json](training/configs/frozen_training.json)。
模型结构与输出参数名保持兼容，重新训练的权重可以交给现有模型加载器和导出脚本。

| 分支 | 模型与输入 | 拟合人数 | 固定轮数 | 优化器 | 学习率 | weight_decay |
|---|---|---:|---:|---|---:|---:|
| A | 轴位 34 片，四层 CNN，会话均值汇总 | 78 | 169 | Adam | 0.0003 | 0 |
| B | 冠状位 38 片，冻结 ResNet18 的 512 维均值特征，线性头 | 158 | 12 | Adam | 0.0003 | 0 |
| C | 矢状位 59 片，同一冻结编码器，512 维线性头 | 158 | 6 | Adam | 0.0003 | 0 |
| S | B、C 原始均值特征依次拼接，1024→2 线性头 | 80 名真实阳性者 | 2 | Adam | 0.0003 | 0.01 |

所有分支使用 seed=20261023、batch=4；损失为每个样本加权交叉熵的批次均值，
类别权重为 `n/(2*class_count)`。B/C/S 的均值、总体标准差仅由各自拟合集计算，标准差下限为 `1e-6`。
原训练使用 GPU 训练 A、提取 B/C 图像特征，CPU 训练 B/C/S 分类头；S 使用一个 CPU 线程，其余阶段使用四个。
冻结 ResNet18 不更新参数和 BatchNorm 统计量。

训练采用**已选定轮数的固定重训流程**：A 重现初始轨迹至第 169 轮，B/C/S 从头训练至 12/6/2 轮。
不重新进行历史选轮、换人、不同方向比较或融合权重搜索。A 的历史选轮使用额外 27 人，
B/C 的选轮使用 126/32 内部分区；这些选择结果已冻结，重训不执行选轮或超参数搜索。
训练后仍使用既定融合权重 0.427/0.300/0.273 和阈值 0.5。

## 需要准备什么

1. 按 [源码环境说明](../README.md) 安装 Python 3.12 x64 与 cu126 环境。训练入口使用其中的
   NumPy、SciPy、nibabel、PyTorch、torchvision，依赖以该环境配置为准。
2. 自行准备相应 OASIS-1 原始数据的 `PROCESSED/MPRAGE/T88_111`、`FSL_SEG` 和会话 TXT 文件。
   必须是原有 1 mm、176×208×176、磁盘方向不变的 T88 Analyze 文件；脚本不执行空间配准。
3. 使用随包 [训练索引](../../data/training/cohort.json)。其中仅包含正式训练所需的 158 名研究受试者标识、
   会话、监督标签、相对文件路径及有序拟合分区；不含 MRI 图像、40 人评价集或实验预测结果。

原始数据不在本交付包中。`--raw-root` 指向包含 `disc1/` 等目录的 OASIS-1 根目录，
路径应与训练索引中的 `image_path`、`segmentation_path` 拼接后对应实际文件。
这是冻结数据划分的复现入口，不会自动对另一批数据重新分组或把它当作同一版模型训练。

## 运行步骤

以下输出目录必须尚不存在，均放在交付目录外。请将数据根目录替换为实际位置。

```powershell
Set-Location F:/mri_fpga_delivery_20261025
$python = 'F:/mri_source_env/Scripts/python.exe'

# 1. 提取 A 的归一化切片及 B/C 的冻结编码器均值特征
& $python -B ./src/model/train.py prepare `
  --raw-root F:/datasets/oasis1_selected_v1 `
  --cohort ./data/training/cohort.json `
  --output F:/mri_training_cache_new `
  --device cuda

# 2. 按冻结配置训练四个分支
& $python -B ./src/model/train.py train `
  --cache F:/mri_training_cache_new `
  --output F:/mri_training_run_new `
  --device cuda

# 3. 从新训练的完整权重组导出部署模型
& $python -B ./src/model/export_model.py `
  --weights F:/mri_training_run_new/release/classification `
  --output F:/mri_training_run_new/release/model/model_int16.bin
```

单独训练某个头可给第 2 条加 `--branches b c s` 或 `--branches a`。
分支选择只控制本次输出；缺少 A/B/C/S 中任一权重的目录不能直接作为完整模型导出输入。
新目录中的同名权重与当前交付使用同一文件命名，程序不会自动覆盖现有权重。

`--device cpu` 可显式选择 CPU 进行特征提取/A 训练，B/C/S 始终在 CPU 训练。
CPU 与 GPU、不同 CUDA/cuDNN 版本或其他数值条件可能产生不同舍入结果；固定 seed 并不承诺跨环境逐字节相同。
169 轮完整 A 训练可能耗时较长；采用新权重前应完成完整训练、结果验证与部署回归。

## 输出位置

```text
mri_training_run_new/
├── training_config.json        该次训练配置
├── training_environment.json   该次训练的运行环境
├── work/                      各分支损失曲线与优化器状态
└── release/
    ├── classification/        新的 .pt 权重及冻结编码器
    ├── training_recipe.json   权重对应的固定训练参数
    └── model/                 执行导出后生成 INT16 bin/json
```

缓存、日志和优化器状态是运行后在外部工作目录生成的训练中间内容，不预置在最终交付成品中。
完整重训完成后，再决定是否采用新权重；现有发布程序和模型不会自动切换为新权重。
`export_model.py` 沿用随包 `calibration.json` 的量化范围；若改变数据、权重行为或网络，
需要重新确定量化范围和软硬件适配，不能仅凭文件成功导出就认定新的部署模型等价。

## 模型与硬件接口

[system_frozen_20261022.json](../shared/model_contract/system_frozen_20261022.json) 定义模型版本、选定轮次、输入形状、融合权重和类别语义。A169/B12/C6 为一级，S2 为二级，融合权重为 0.427/0.300/0.273。

部署模型使用 INT16、MRIMQV2 容器 ABI 2；完整网络硬件使用加速器 ABI 6。模型容器版本和硬件 ABI 分别管理，必须与运行时配套。通信字段见 [协议说明](../../report/reference/protocol.md)，启动文件见 [板端部署](../../board/README.md)。

## 训练一致性约定

- A 模型初始化保留 SequenceClassifier→StatusModel 三分类头的随机数消耗，再构造二分类头。
- B 图像归一化保留“先截断、再转 INT16”的行为；A/C 使用冻结归一化。
- 训练脚本只依赖本目录中的正式模块。

固定划分受开发集分析影响，不构成独立测试方案；重训成功不作为泛化性能结论。
