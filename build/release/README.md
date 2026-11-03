# 成品入口

当前发布版本：`mri_full_overlap_125mhz_20261102`，已通过上板验证。
硬件为 125 MHz、overlap-v1、加速器 ABI 6、标识 0x46554c4c；模型容器 ABI 2。

| 目录 | 内容 |
|---|---|
| [board/boot](board/boot/) | SD 五件套与版本清单，必须成套部署 |
| [board/runtime](board/runtime/) | 推理程序、输入校验器、Qt 界面和网络助手 |
| [fpga](fpga/) | 位流、HWH、XSA、FSBL、HLS IP |
| [host](host/) | Windows 工作台精简免安装目录与使用说明 |
| [model](model/) | 冻结 INT16 模型及元数据 |
| [pynq_skill.zip](pynq/pynq_skill.zip) | 独立通用 PYNQ 技能分发 ZIP；可编辑内容在 skill/ |

部署步骤见 [board](../../board/README.md)，源码重建见 [build](../README.md)。
XSA 来自当前最终硬件；FSBL 是已通过板测启动包所使用的版本。完整重建会从新 XSA 生成 FSBL/BSP。
BOOT.BIN、boot.scr、zImage、system.dtb、rootfs-mri.cpio.gz 作为一组写入 SD 启动分区，保留数据分区。
不能混用旧 ABI 5 的位流、运行时或启动文件。

PYNQ 压缩包可独立解压使用，内容对应 [skill/](../../skill/README.md) 中的完整可编辑技能、脚本、案例和硬件附件。
