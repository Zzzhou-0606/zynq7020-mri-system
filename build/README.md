# 编译与生成

正式源码在 [src/fpga](../src/fpga/) 和 [src/shared](../src/shared/)。可编辑 Vivado 工程为 [d2.xpr](vivado/mri_full/d2.xpr)，HLS 工程及生成 RTL/IP 在 [hls/mri_full](hls/mri_full/)。
成品统一位于 [release](release/README.md)；完整操作附件为 [复现操作说明](../report/reproduction.md)。

## 环境与平台

Windows x64、PowerShell、Python 3.12；Vivado、Vitis、Vitis HLS 2020.2。目标器件为 xc7z020clg400-2。
选择 2020.2 是为了保持随包平台 IP、BSP 与现有板卡软件环境一致。工具安装根默认 E:/Xilinx，可用 -Xilinx 指定。
电脑端 Python 环境另见 [源码环境](../src/README.md)。

## 完整重建

从交付根目录执行；工作区和输出目录必须是两个尚不存在的包外目录：

```powershell
Set-Location F:/mri_fpga_delivery_20261025
./build/scripts/build_all.ps1 -Workspace F:/mri_build_new -ReleaseRoot F:/mri_release_new -ClockMHz 125 -Xilinx E:/Xilinx -Python python
```

| 顺序 | 入口 | 处理与产物 |
|---|---|---|
| 1 | scripts/prepare_workspace.py | 按 rebuild_layout.json 复制源码和平台依赖到新工作区 |
| 2 | scripts/hls/Build-Hls.ps1 | 综合最终 mri_full.cpp，导出新 HLS IP 和 RTL |
| 3 | scripts/vivado/build_vivado.tcl | 在平台种子中替换计算 IP，综合、布局布线、检查时序，生成 bit/HWH/XSA 和报告 |
| 4 | scripts/ps/Build-Fsbl.ps1 | 从本次 XSA 生成 FSBL/BSP |
| 5 | scripts/ps/Build-Runtime.ps1、Build-Qt.ps1 | 编译 ARM 推理、输入校验器和 Qt 界面 |
| 6 | scripts/package/Finalize-Bit.ps1、package_full.py | 转换位流、更新 rootfs，生成 BOOT.BIN 和完整 SD 五件套 |

HLS 调度目标周期为 6.667 ns；最终整机时钟由 Vivado 实现决定，默认使用已通过板测的 125 MHz。-ClockMHz 150 会先尝试 150 MHz，时序不合格时回退 125 MHz。
新 HLS IP 显式接入 Vivado，完整构建不依赖原电脑的实验目录或现有 IP 缓存。
成功时输出 MRI_RELEASE_READY=<新成品目录>，其中含 board/boot、board/runtime、fpga、model。
构建日志和资源/时序报告保留在新工作区 logs、results 中。

## 复用已发布硬件

```powershell
./build/scripts/build_all.ps1 -Workspace F:/mri_app_build_new -ReleaseRoot F:/mri_app_release_new -UsePrebuiltHardware -Xilinx E:/Xilinx -Python python
```

此模式复用交付中的 125 MHz 位流、HWH、XSA、FSBL 和 HLS IP，只重编 ARM/Qt 程序并重新打包启动文件；不执行 HLS、Vivado 或 FSBL 重建。

## 平台输入与部署

两种模式均使用 dependencies/base_boot 中的 Linux 内核、设备树、启动脚本和基础 rootfs，以及随包 U-Boot、Qt 头文件及链接库，不重新编译操作系统。
完整重建生成 FSBL/BSP；修改 PS、管脚或外设配置时，还须同步提供匹配的设备树、内核及其他平台输入。
现有版本清单在 [bundle_manifest.json](release/board/boot/bundle_manifest.json)。新的构建输出应按 [上板说明](../board/README.md) 独立部署并确认，原成品性能不能直接作为新产物测量结果。
模型训练与导出见 [模型说明](../src/model/README.md)。

## Vivado 与 FSBL 工程

最终 125 MHz Vivado 工程为 [mri_full/d2.xpr](vivado/mri_full/d2.xpr)。新 HLS IP 接入由完整构建流程完成。

可编辑 FSBL 平台及 BSP 位于 [vitis/fsbl/mri_hw](vitis/fsbl/mri_hw/)，应用位于 [zynq_fsbl](vitis/fsbl/mri_hw/zynq_fsbl/)。该平台来自当前 `mri_full_overlap.xsa`，已完成编译和链接。Windows Makefile 兼容处理包含在 [Build-Fsbl.ps1](scripts/ps/Build-Fsbl.ps1) 中。

启动包配套的 FSBL 成品为 [release/fpga/fsbl.elf](release/fpga/fsbl.elf)。从工程重新生成的 ELF 属于新的构建产物，应与本轮 XSA、位流和启动包成套使用并独立验收。
