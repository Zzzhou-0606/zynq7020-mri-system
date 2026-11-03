# 接口选择和迁移

## AXI DMA + AXI Stream

自动运行器限定 simple mode、一入一出。需要 HWH 含 C_INCLUDE_SG=0、双通道使能和 C_SG_LENGTH_WIDTH。输入/输出分别为原生字节序连续分配缓冲区；输入长度和输出长度可不同。输出帧必须按硬件协议结束，TLAST 不应从软件预期值猜测。

启动型 IP：依据其实际寄存器图填入初始化写列表，最后启动。自由运行 IP：不写 ap_start。Notebook 示例是 FIFO 恒等回环，没有加速器控制寄存器。

SG、循环 DMA、VDMA、有多个输入流或异步输出的设计，需要独立调度、超时和回收方案；拒绝通过调整几个地址硬套单帧运行器。

## AXI master 直接访问 DDR

这种结构不需要额外 AXI DMA。标准 HLS ap_ctrl_hs 现在可使用 [run_m_axi适配器](master-adapter.md)；其他协议仍需设计专属适配器。复用 environment、overlay_metadata、compare 和报告格式：

1. 根据 HWH/驱动头文件确认输入/输出指针、长度、控制与完成状态寄存器，以及指针 32/64 位宽度。
2. 用 `pynq.allocate` 分配缓冲区；设备地址取 `device_address`，不是 NumPy 虚拟地址。
3. 写入输入、输出初始化后 flush；按实际控制接口写指针和标量，再启动。
4. 有界轮询真实完成状态；明确状态位是否读清除。完成后 invalidate 输出，再复制结果并比较。
5. 异常后，必须确认 AXI master 已停止或完成硬件复位，才能释放缓冲区。仅抛 Python 超时异常不会停止硬件。

通用工具无法从 `m_axi` 字样推断寄存器 ABI。run_m_axi 要求显式契约，不自动识别指针和标量；目前已完成模拟测试，实板计算待验证。将具体设计通过最小输入、边界长度、故障恢复后再标为实板支持。固定预留DDR、特殊别名布局和既有C++运行时参见 [部署扩展](linux-qt-deployment.md)。
