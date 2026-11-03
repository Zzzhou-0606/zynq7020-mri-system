当前硬件为125MHz / ABI6；源码在src/fpga与src/shared，完整硬件构建见[build/README.md](../build/README.md)。

# 源码环境与运行

## Windows 上位机与模型

适用系统：Windows x64；Python 基线为 CPython 3.12.6 x64（安装脚本接受 3.12.x）。
上位机 WebUI 需要 Microsoft Edge WebView2 Runtime；PyTorch 等原生扩展需要 Microsoft Visual C++ x64 运行库。
精简免安装目录自带其运行环境；源码方式需安装上述系统组件。

依赖分为 CPU 与 NVIDIA CUDA 12.6 两种 PyTorch 包，二者均固定 `torch==2.8.0`、`torchvision==0.23.0`。
其余完整依赖固定在 [requirements.txt](../build/environment/requirements.txt)，
版本依据随包成品的 [环境配置](../build/environment/portable_environment.json)。
CPU 环境不要求显卡；CUDA 方式另需支持 CUDA 12.6 的 NVIDIA 驱动。
配套运行环境以 cu126 为基线；CPU 安装分支的完整分割流程需在目标环境确认。

在 PowerShell 中执行（`F:/mri_source_env` 必须是新目录）：

```powershell
Set-Location F:/mri_fpga_delivery_20261025
# -Python 可填写已安装 Python 3.12 x64 的完整路径
./build/environment/setup_source.ps1 -Python python -Environment F:/mri_source_env -Torch cu126
# 无 NVIDIA GPU 时，将上一条的 cu126 改为 cpu
& F:/mri_source_env/Scripts/python.exe -B ./src/start_host.py
```

安装依赖需要访问 PyPI 和 PyTorch 的包源。脚本只创建指定虚拟环境，不改系统 Python 包。
不要直接安装 `src/segmentation/fastsurfer/requirements.txt`：它是上游 Linux 容器快照，
Windows 环境统一使用上文的依赖配置。

源码入口自动设置 `host`、`training` 和 `shared` 的模块搜索路径。
浮点权重读取 `data/models/classification/`，FastSurfer 权重读取 `data/models/segmentation/`；
运行中的病例和设置写入 `data/local_cases/`、`data/local_settings/`。默认运行病例库初始为空；[五例演示影像](../data/test_cases/oasis1/README.md) 由使用者导入。
若通过其他程序调用源码，将 `src/` 和 `src/model/` 加入 Python 搜索路径即可。

## 正式模型训练

A169/B12/C6/S2 的训练入口、固定参数、有序训练索引及权重导出见 [模型训练说明](model/README.md)。

## 模型量化导出

```powershell
& F:/mri_source_env/Scripts/python.exe -B ./src/model/export_model.py --output F:/mri_model_export_new/model_int16.bin
```

导出使用冻结权重及 `data/models/calibration.json` 的范围参数，不启动训练。
输出文件必须尚不存在；父目录自动创建。生成的 `model_int16.bin` 用于 rootfs 打包。
修改网络、权重、量化参数或寄存器协议后，需要重新确认软硬件配套关系。
模型结构、预处理与导出实现在 `src/model/training/`，此命名保留 Python 包接口。

## FPGA 与 ARM/Qt 源码

| 内容 | 位置 | 编译环境 |
|---|---|---|
| HLS C++ | fpga/pl/hls/cnn_v5 | Vitis HLS 2020.2，xc7z020clg400-2；HLS目标6.667 ns，整机125 MHz |
| ARM 推理 | fpga/ps/drivers、preprocessing | Vitis 2020.2 的 ARM Linux hard-float GCC |
| Qt UI | fpga/ps/ui | 同一 ARM 编译器与交付 Qt 头文件、链接库 |
| 板端服务与 Linux 打包 | fpga/ps/service、linux | 配套 rootfs Python 3 / Windows 打包 Python 3.12 |
| ABI 与寄存器定义 | shared/accelerator、protocol | 当前加速器 ABI 6、模型容器 ABI 2 |

重建命令及构建产物位置见 [构建说明](../build/README.md)。
`demo.pro`、`demo2`、`mri_v2.hpp`、`mri_v3.hpp` 是现有引用名称；旧数字不代表另交付旧版系统。
正式源码区不包含厂家独立蜂鸣器、RTC 测试应用。

## Linux 启动与输入预处理

`fpga/ps/linux/` 包含 ARM 依赖准备、设备树处理、根文件系统打包和 FSBL 生成代码。界面源码位于 `fpga/ps/ui/`，MRI 服务和网络配置位于 `fpga/ps/service/`。完整流程见 [构建说明](../build/README.md)。

板端服务安装在 `/opt/mri/`，通过 `/etc/default/mri` 配置，病例与任务存储使用已挂载的 `/mnt/mri-data` 分区。`/opt/demo2` 名称用于兼容启动脚本。`fsbl.tcl` 的 XSA 必须与位流匹配。

`fpga/ps/preprocessing/frozen_input.hpp` 由 `fpga/ps/drivers/mri_infer_full.cpp` 编译，负责 MRIRAW1 解析、逐片掩膜检查、会话 p1/p99、固定尺度 INT16 编码、整数映射 q/256，以及 B/C 的 224×224 双线性插值和 ImageNet 标准化。电脑提供固定空间采样后的原始切片与掩膜；编码尺度不针对测试病例重新拟合。非法输入直接报错。

保存的独立 PyTorch 冻结参考比较结果为：A 归一化逐元素相同，B/C 输出张量最大绝对误差为 1.1921e-6，差异来自浮点运算顺序。
