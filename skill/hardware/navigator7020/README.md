# 领航者 7020 硬件附件

这些附件对应 ATK-DF7020、`xc7z020clg400-2` 和 Vivado 2020.2。主技能的 Python 入口从 [总说明](../../README.md) 开始。

| 文件 | 内容 | 选择 |
|---|---|---|
| [R3 双通路工程](pynq_7020_dual_hardware_20261025_r3.zip) | 原 FIFO 与独立仿射 DMA、HLS IP、构建脚本和实现结果 | 只联调两条计算通路 |
| [R4 显示触摸整机工程](pynq_7020_qt_hardware_20261025_r4.zip) | FIFO、仿射、LCD/VDMA、触摸约束、IP 库、可编辑工程及最终报告 | 运行屏幕和触摸 Qt 演示 |

## 直接运行

无需重新综合，已验收的三组 bit/hwh 位于 [overlays](../../pynq-accelerator-debug/overlays/)：

- `dma_tutorial`：首次 FIFO 回环。
- `affine_dual`：R3 FIFO＋仿射。
- `qt_dual`：R4 FIFO＋仿射＋LCD，包含最终触摸上拉约束。现场历史名称为 `qt_dual_pullups`，这里与启动脚本默认名称统一。

运行 Qt 时按 [7020 附录](../../pynq-accelerator-debug/references/qt-navigator7020.md) 操作；运行计算矩阵按 [双通路指南](../../pynq-accelerator-debug/references/dual-stream-board.md) 操作。

## 重建

将所选 ZIP 解压到独立构建目录。R3 从 `build_dual.tcl` 开始，R4 从 `build_display.tcl` 开始，分别按脚本要求设置构建目录并运行 Vivado 2020.2。R4 的 `qt_dual_vivado_sources.zip` 是可编辑工程归档，解压后打开其中的 `.xpr`。

R4 已验收的输出在附件的 `exports_pullups/`：bit/hwh、最终 DCP、时序、总线偏斜、资源、DRC 和拓扑记录。源码重建输出在新的 `exports/`。

附件内部 README 说明工程打开和重建方法；运行文件位于本 PYNQ 包的 `pynq-accelerator-debug/`，内核模块与 Qt 源码见 [board_support](../../pynq-accelerator-debug/board_support/navigator7020/NOTICE.md) 和 [Qt 案例](../../pynq-accelerator-debug/examples/qt_demo/README.md)。

更换板卡时保留通用逻辑与算法，重新配置该板的 PS/DDR、时钟、引脚、显示和触摸；使用新板配套位流进行验收。
