# 复现操作说明

本文件是设计报告第 7 章引用的操作附件。命令从交付根目录执行，工具和数据输出使用包外目录。

## 1. 准备材料

| 材料 | 位置 |
|---|---|
| 正式源码 | [src](../src/) |
| 模型权重与训练索引 | [data](../data/) |
| 最终 Vivado 工程 | [d2.xpr](../build/vivado/mri_full/d2.xpr) |
| HLS 工程与 RTL/IP | [mri_full](../build/hls/mri_full/) |
| SD 启动文件 | [board/boot](../build/release/board/boot/) |
| FPGA 成品 | [fpga](../build/release/fpga/) |
| 上位机免安装包 | [host](../build/release/host/) |
| PYNQ 完整技能包 | [pynq](../skill/) |

目标器件为 xc7z020clg400-2。随包提供五例 OASIS-1 演示影像及已有结果，见 [测试用例](../data/test_cases/oasis1/README.md)；另提供 [正式板测输入和结果](../sim/mri/README.md)。自备输入须满足相同网格契约。

## 2. 准备电脑环境

直接使用时，解压上位机 ZIP，进入 mri_workstation_20261025，运行 mri_workstation.exe；完整说明见 [usage.md](../build/release/host/usage.md)。
源码方式使用 CPython 3.12 x64，以及 Microsoft Visual C++ x64 运行库、WebView2 Runtime：

```powershell
Set-Location F:/mri_fpga_delivery_20261025
./build/environment/setup_source.ps1 -Python python -Environment F:/mri_source_env -Torch cu126
& F:/mri_source_env/Scripts/python.exe -B ./src/start_host.py --help
& F:/mri_source_env/Scripts/python.exe -B ./src/model/train.py --help
```

没有 NVIDIA GPU 时将 cu126 改为 cpu。安装版本和完整依赖说明见 [源码环境](../src/README.md)；训练数据准备、固定参数和导出步骤见 [模型训练](../src/model/README.md)。

## 3. 部署板端

当前发布版本 mri_full_overlap_125mhz_20261102 已通过上板验证。将 BOOT.BIN、boot.scr、zImage、system.dtb、rootfs-mri.cpio.gz 成套部署；保留数据分区。
断电取卡复制，或使用已有 SSH 连接部署：

```powershell
./board/Deploy-Sd.ps1 -BoardIP 192.168.50.36
```

IP 替换为实际地址。启动身份应为 overlap-v1、加速器 ABI 6、125 MHz、0x46554c4c；模型容器 ABI 2。
静态网络配置、SD 挂载点及参数见 [board/README.md](../board/README.md)。

## 4. 运行 MRI 系统

准备同次扫描的 image.nii.gz、mask.nii.gz，以及需要分割时的 native.nii.gz。分类输入满足冻结 T88 契约：176×208×176、1 mm、匹配方向及有效脑掩膜。

```powershell
& F:/mri_source_env/Scripts/python.exe -B ./src/start_host.py --data-root F:/mri_cases
```

在工作台输入板卡 IP:8080，完成配对，选择 PS + PL，导入扫描后启动分析。核对 131 片、34 次批量调用以及分类/分割状态。
使用工作台生成的 MRIRAW1 输入时，也可以执行：

```powershell
& F:/mri_source_env/Scripts/python.exe -B ./board/run_classification.py --board 192.168.50.36 --input F:/mri_input/input.bin --output F:/mri_run_new
```

随包正式板测输入为 `data/reference/mri_input.bin`，保存参考为 `sim/mri/reference_result.json`；使用该输入时可传入 `--expected-result sim/mri/reference_result.json` 进行精确回归比较。五例影像的已有结果为浮点参考，与 INT16 输出按量化误差解释。新运行输出存入指定目录，计时口径见 [current_performance.md](current_performance.md)。

## 5. 从源码重建

安装 Vivado、Vitis、Vitis HLS 2020.2；默认目录 E:/Xilinx。该版本与随包平台 IP、BSP 及板卡环境一致。

```powershell
./build/scripts/build_all.ps1 -Workspace F:/mri_build_new -ReleaseRoot F:/mri_release_new -ClockMHz 125 -Xilinx E:/Xilinx -Python python
```

顺序为 HLS 新 IP → Vivado 接入、综合与实现 → bit/HWH/XSA → 新 FSBL/BSP → ARM/Qt → rootfs/BOOT 五件套。
平台内核、设备树、U-Boot、基础 rootfs 沿用随包输入。复用现有硬件时添加 -UsePrebuiltHardware；两个模式的边界及完整输出位置见 [构建说明](../build/README.md)。

## 6. 复现 PYNQ 技能包

在包含 scripts 和 tests 的技能目录执行：

```powershell
Set-Location ./skill/pynq-accelerator-debug
python -B -m unittest discover -s tests -v
python -B examples/affine_u32/run_example.py
```

离线示例需要 NumPy；实际硬件调用需要匹配的 PYNQ、板卡、bit/hwh 和接口配置。
进入硬件操作前阅读 [技能入口](../skill/pynq-accelerator-debug/README.md)。
Qt 后台与界面命令见 [Qt 示例](../skill/pynq-accelerator-debug/examples/qt_demo/README.md)，领航者板的显示、触摸、启动和停止顺序见 [板卡说明](../skill/pynq-accelerator-debug/references/qt-navigator7020.md)。
