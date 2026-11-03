# 实例：重复下载之后 DMA channel not started

## 条件和现象

2026-10-25，领航者 Zynq-7020 / PYNQ 2.7.0，厂商 DMA→FIFO→DMA 位流。首次100个 uint32 回环通过；在已访问 DMA 驱动的 Overlay 上再次 `ol.download()`，下一次传输失败。

故障表现：

```text
RuntimeError: DMA channel not started
mm2s_status = 1
s2mm_status = 1
mm2s_length = 0
s2mm_length = 0
dma_reset_confirmed_stopped = true
```

首次通过使用400字节输入，重新下载后失败的调用使用4字节输入。

## 如何缩小问题

| 观察 | 推断及下一步 |
|---|---|
| 同一位流此前完成回环 | 不优先怀疑所有 AXI 连线都错误，先看状态变化 |
| 错误发生于通道尚未启动，长度为0 | 优先检查驱动启动状态 |
| 两通道 halted，复位后确认停止 | 可以结束该次缓冲区生命周期，再准备新的调用 |
| 重新下载后沿用旧 Overlay 和已实例化驱动 | 检验新建 Overlay 是否恢复初始化 |

## 修复

```python
# 当前 PL 替换已获授权、无其他任务占用，且上次 DMA 已确认停止。
ol = Overlay(str(BITFILE), download=True)
# 后续从这个新对象获取 DMA，不再使用旧 dma 变量。
actual, report = run_dma(ol, DMA_NAME, x, expected)
```

修复后18组边界矩阵通过，另有Notebook执行检查和重新加载恢复记录。本次故障来自旧对象缓存驱动与重新配置后的设备状态不一致，使用新对象重新初始化后恢复。

## 复用这个经验

发生重新配置相关问题时，记录“位流是否重新下载、对象是否复用、硬件状态、恢复动作和再次测试”。即使异常文本相同，也先读当前状态。master 超时不能套用 DMA reset；其他 IP 也可能有独立残留状态。

软件故障注入入口在 `tests/`，硬件回归使用独占测试环境。
