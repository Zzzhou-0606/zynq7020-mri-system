# 通用 PYNQ 加速器联调

独立交付的内容索引、逐项适用条件与验证状态见 [skill 总入口](../README.md)。本目录同时提供通用代码和领航者 7020 案例附件。

将 `pynq-accelerator-debug` 整个目录上传到开发板 Jupyter 工作目录，打开 `bringup.ipynb`。所有硬件代码在开发板的 Python 3 内核执行。先跑环境采集和离线比较，再明确启用硬件步骤。

## 从哪里开始

| 任务 | 入口 | 交付/证据 |
|---|---|---|
| 第一次拿到包 | [逐步快速开始](references/quickstart.md) | 每步预期输出及失败入口 |
| 接自己的IP | [接口配置表](references/integration-contract.md) | 数据、控制、内存和参考契约 |
| 让大模型协助 | [提示词模板](references/prompts.md) | 首次接入、超时、数值错误、迁移、整机部署 |
| 学习完整排错 | [真实故障案例](references/failure-case.md) | 原始异常、推断、修复和回归链 |
| 增加计算案例 | [uint32仿射案例](examples/affine_u32/README.md) | 双接口HLS源码、参考、测试和运行入口 |
| 同时保留回环与计算 | [7020双通路指南](references/dual-stream-board.md) | 独立DMA、双通路Notebook及验收矩阵 |
| m_axi直接访问DDR | [master适配器](references/master-adapter.md) | 多缓冲区、指针、完成轮询与隔离 |
| 接到Linux／Qt | [部署扩展指南](references/linux-qt-deployment.md) | 两条部署路线与分层验收 |
| 增加屏幕与触摸 | [Qt 触摸联调页](examples/qt_demo/README.md) | 双通路选择、长度键盘、后台调用、比对与耗时 |
| 换板/换题后交付 | [迁移验收表](references/migration-acceptance.md) | 必须重测项及报告模板 |

R3在同一位流中完成FIFO 27组、仿射24组及重新加载后的2组检查，均通过。

## 适用范围

- Zynq/PYNQ，具有适配本板的系统镜像和同次构建的 `.bit` / `.hwh`。
- 自动联调：AXI DMA simple mode，MM2S、S2MM 双通道，一次固定长度输入及输出，独占硬件。
- 标准HLS ap_ctrl_hs的m_axi调用，支持多个命名缓冲区和显式指针契约。
- 支持整数精确比较、浮点 atol/rtol 比较，以及可选加速器寄存器初始化/启动写入。
- 不绑定 MRI、神经网络、具体板卡名、IP 实例名或固定数据长度。IP 名称、输入和参考输出由使用者指定。
- m_axi使用独立master入口；SG DMA、VDMA、连续视频和并发调用需要相应的调度器。见 [接口适配](references/interfaces.md)。

运行环境：Python 3.8+、NumPy及PYNQ 2.7风格的Overlay / allocate / DMA / MMIO接口。更换版本时按迁移清单核对HWH元数据和API。

## 首次接入

按 [连接说明](references/connection.md) 配置板卡。推荐板卡 PS 网口接路由器、电脑接同一局域网，USB_UART 用于查看 IP。Jupyter 是浏览器入口，网络是连接通道，两者配合使用。

## 最小案例

先使用 DMA → AXI Stream FIFO → DMA 的恒等回环硬件，输入与输出一致。本独立交付在 `overlays/` 附领航者 7020 的三组配套位流；通用代码通过文件路径和 IP 名称接入使用者自己的硬件。

本次领航者 7020 案例可使用厂商 `ZYNQ_7020_PYNQ.zip` 中的：

```text
4_dma_tutorial/vivado/dma_tutorial/ready_to_test/dma_tutorial.bit
4_dma_tutorial/vivado/dma_tutorial/ready_to_test/dma_tutorial.hwh
```

本交付已将这两文件放在 Notebook 旁的 `overlays/` 下，复现本板案例可直接使用。已检查厂商 Block Design：`axi_dma_0/M_AXIS_MM2S` 接 FIFO，FIFO 输出接 `axi_dma_0/S_AXIS_S2MM`。已在领航者 7020/PYNQ 2.7.0 实测，18 组边界回环通过，详见 VALIDATION.md。其他板卡必须使用各自适配的位流。

Notebook 中示例输入为 `np.arange(100, dtype=np.uint32) + np.uint32(0xabcd0000)`，参考输出为该数组的副本。逐单元执行到下载步骤，确认当前可替换 PL 后将 `RUN_HARDWARE` 改为 `True`。下载会替换 PL；诊断步骤的 `download=False` 不下载。

## 替换为自己的加速器

修改 Notebook 的 `BITFILE`、`DMA_NAME`、`x`、`expected`。输出规格由 `expected` 数组确定，允许与输入不同，但必须匹配实际协议。

对于有 AXI-Lite 控制口的 IP，可传：

```python
# offset / value 必须来自当前 IP 的 HWH / 驱动头文件；下面只展示结构。
accelerator = {"ip": accelerator_name, "writes": verified_register_writes}
actual, report = run_dma(ol, DMA_NAME, x, expected,
                         timeout_s=3, accelerator=accelerator)
```

写操作在接收通道就绪后、发送前执行。HLS `ap_ctrl_hs`先写参数、再写ap_start；自由运行IP使用 `accelerator=None`。寄存器表取自当前IP的构建产物。

先测最小包，再测边界包与不同内容。输出长度由设计确定，DMA 自动检查的是配置容量及收到的字节数；协议正确性需要自己的参考模型。浮点容差应在运行前根据算法/量化规定固定。

## 结果与失败处理

- `status=pass`：本次 DMA 输出与提供的参考一致。
- `status=mismatch`：传输完成但数值不符，查看首个不一致位置和误差。
- `TransferFailure.report`：超时、通道错误、长度错误及恢复状态。
- `transfer_wall_ms`：Python发起接收/启动/发送至完成等待和缓存同步的墙钟时间；Overlay下载、分配和参考生成在计时范围之外。

报告通过 `save_report()` 保存为新的JSON文件。超时时尝试一次有界DMA reset；双通道仍未确认停止时，缓冲区进入 `QUARANTINE`。保持内核和缓冲区，先复位/重启开发板。恢复后用 `ol = Overlay(str(BITFILE), download=True)` 创建新对象，重新初始化驱动，再运行下一次测试。

完成轮询有超时；PYNQ 驱动初始化、Overlay 下载或坏硬件导致的 AXI 总线访问挂起不受该轮询超时保护。发生这类情况按 [排错表](references/troubleshooting.md) 检查时钟/复位/地址映射。

## 离线验证

```sh
python -m unittest discover -s tests -v
python scripts/pynq_debug.py
```

软件测试使用模拟DMA和MMIO，依赖标准库与NumPy；硬件调用使用板端镜像已有的PYNQ。

## 经验来源与复用证据

- 厂商DMA示例使用FIFO缓存，先发送并等待，再接收。本技能采用接收先行，使接收端在数据到达前就绪。
- PYNQ 官方 DMA 驱动 `wait()` 使用无超时轮询。本技能增加完成状态轮询及异常记录；对应故障采用离线注入验证。
- HWH 参数、缓存同步、TLAST、长度与布局问题分别记录证据和验证边界，详见 [sources.md](sources.md) 和 [排错表](references/troubleshooting.md)。

本包附领航者7020日志及不同长度、数据类型的验证记录。迁移到新板后，将该板配置和实测结果加入验收表。

仿射案例提供Stream与master两种接口模板。领航者7020双通路案例通过 `dual_stream_bringup.ipynb` 运行：原FIFO由 `axi_dma_0` 控制，新增仿射计算由 `axi_dma_affine` 控制；同一位流同时包含两条通路。Linux／Qt整机接入使用独立部署指南，屏幕和触摸演示从 [qt_demo](examples/qt_demo/README.md) 开始，具体显示驱动、分辨率和触摸映射见 [7020附录](references/qt-navigator7020.md)。

R4完成 Linux／Qt／LCD／触摸与双计算通路的实板演示。
