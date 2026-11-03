# 领航者7020：FIFO回环与仿射计算双通路

这个案例在原有FIFO回环旁新增独立的计算通路。两条通路同时保留在同一个位流中，分别由自己的DMA控制。

2026-10-25已完成实板验收：FIFO 27组、仿射24组、重新加载后2组均通过；错误参考和两条DMA超长请求检查符合预期。

```text
                    ┌→ axi_dma_0       → FIFO             → axi_dma_0       ┐
PS DDR ↔ AXI互联 ────┤                                                     ├──── PS DDR
                    └→ axi_dma_affine  → y=(3x+7) mod 2^32 → axi_dma_affine  ┘
```

| 通路 | DMA实例 | 控制地址 | 输入/输出 |
|---|---|---|---|
| 原FIFO回环 | axi_dma_0 | 0x40400000 | 输入数据原样返回；保留字节长度测试 |
| 新仿射计算 | axi_dma_affine | 0x40410000 | 一维uint32；每元素计算后返回 |

板型为领航者Zynq-7020，part为xc7z020clg400-2；构建工具为Vivado/Vitis HLS 2020.2。两条通路共享100MHz时钟与DDR接口。DMA长度字段均为14位，每次最多16383字节；仿射通路按完整uint32传输，最大4095元素。

## 文件和入口

- `overlays/affine_dual.bit`和同名hwh：双通路硬件。
- `overlays/dma_tutorial.bit/.hwh`：原厂商回环文件，继续保留。
- 根目录 `dual_stream_bringup.ipynb`：双通路实板验收。
- `examples/affine_u32/board_suite.py`：测试矩阵和证据保存。
- `examples/affine_u32/run_example.py`：只运行仿射计算的入口。

通用技能包包含源码与方法，领航者附件版包含本板位流。默认Notebook设置 `RUN_HARDWARE=False`；确认板卡与文件后改为True，顺序执行。

## 单独使用一条通路

在根目录Notebook内：

```python
import sys
import numpy as np
from pynq import Overlay
sys.path.insert(0, 'scripts')
sys.path.insert(0, 'examples/affine_u32')
from pynq_debug import run_dma
from reference import golden

ol = Overlay('overlays/affine_dual.bit', download=True)
x = np.array([0, 1, 0xffffffff, 0x80000000, 0x55555555], dtype=np.uint32)
fifo_output, fifo_report = run_dma(ol, 'axi_dma_0', x, x.copy())
affine_output, affine_report = run_dma(ol, 'axi_dma_affine', x, golden(x))
```

期望FIFO输出与输入一致；仿射输出为 `[7,10,4,2147483655,6]`。下载一次后，可在同一Overlay上交替调用两条通路。

## 验收矩阵

| 项目 | 测试内容 |
|---|---|
| 仿射计算 | N=1/3/16/100/1024/4095，各测零值、递增、回绕边界和固定seed随机数，共24组 |
| FIFO回环 | 与仿射交替运行同样24组uint32；追加1/3/16383字节，共27组 |
| 差异检测 | 仿射参考的索引5故意改动，检查mismatch及首个差异位置 |
| 超长请求 | 两条DMA各提交16384字节请求，检查传输前拒绝 |
| 重新加载 | 新建Overlay后各执行一组，检查两条通路恢复 |

测试目录包含summary.json、每次传输的JSON报告，以及输入/参考/实际输出NPZ。案例按顺序交替执行，两条通路的并发带宽可另设性能实验。

## 重建方法

本板工程在 [本交付硬件附件](../../hardware/navigator7020/README.md) 中提供 `build_dual.tcl`、`vendor_system_bd.tcl` 和 `ip_repo/`：

1. 从仿射HLS源码生成并导出 `affine_u32_stream` IP，将其放入ip_repo。
2. 用Vivado 2020.2执行 `build_dual.tcl`。脚本重建厂商PS/DDR和原回环，再增加第二个DMA与计算IP。
3. 构建完成后，exports包含bit/hwh、XSA、资源及实现时序报告。
4. 对照本板契约上传配套bit/hwh，执行Notebook验收。

每次构建使用新的 `AFFINE_BUILD_ROOT` 和 `AFFINE_EXPORT_ROOT`，分别保存工程和输出。2020.2若遇日期版本号溢出，将本次生成的 run_ippack.tcl 复制为构建目录内修正版，将 `set Revision` 的值改为有效整数后重新打包。

自由运行计算IP按HWH的MODULE名称和VLNV核对；DMA按PYNQ的ip_dict核对地址。计算IP没有AXI-Lite控制口，运行时由流握手驱动。
