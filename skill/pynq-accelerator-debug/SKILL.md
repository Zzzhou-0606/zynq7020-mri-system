---
name: pynq-accelerator-debug
description: Bring up and debug PYNQ accelerators using board-specific overlays, AXI DMA simple-mode transfers or explicit-contract HLS ap_ctrl_hs AXI master calls, golden-output comparison, and fault isolation. Use for accelerator integration or its Linux/Qt deployment extension; matching FPGA parts alone do not imply board compatibility.
---

# PYNQ 加速器联调

先读 README.md 确认支持边界，再按真实环境执行。无需 MRI 数据、权重或特定题目。

首次使用读 [quickstart](references/quickstart.md)；接新IP填写 [契约](references/integration-contract.md)。按任务选读 [提示词](references/prompts.md)、[最小计算案例](examples/affine_u32/README.md)、[FIFO与计算双通路](references/dual-stream-board.md) 或 [Linux／Qt扩展](references/linux-qt-deployment.md)。验证结果统一查阅根目录的 VALIDATION 系列记录。

1. 确认板卡完整型号、镜像/PYNQ 版本、网络地址、当前业务和用户授权的硬件替换范围。仅需要当前步骤所缺的信息。烧写 SD 卡会覆盖分区，须确认具体目标设备；加载 Overlay 会替换 PL。用户已经授权的相同操作无需重复确认。
2. 在板端Python内核运行 `scripts/pynq_debug.py` 的 `environment()`。确认镜像、PYNQ、设备驱动和缓冲区分配环境就绪。
3. 按 `references/connection.md` 建立网络/Jupyter 入口。先用 `Overlay(path, download=False)` 读取元数据，核对同次构建的 bit/hwh 和 IP 名称；此阶段不实例化 DMA 驱动。
4. 选择通路：AXI DMA simple mode使用 `run_dma()`；标准HLS ap_ctrl_hs AXI master按 [master指南](references/master-adapter.md)使用 `run_m_axi()`。从HWH、驱动头文件和连接图逐一确认指针、标量与内存语义。
5. 固定输入/输出形状、数据类型、字节数、字节序、TLAST约定和参考结果。使用可公开生成的测试数据，先运行最小案例，再测试边界长度和不同内容。
6. 按已有授权新建 `Overlay(bitfile, download=True)`，确认专用测试环境无其他硬件使用者。DMA路径重新下载后不沿用旧驱动，接收先行、启动计算后发送，确认完成才调用wait；异常时尝试一次有界DMA reset。master路径先写缓冲区、指针和标量，最后start，记录done直到idle；不套用DMA的接收/复位步骤。
7. 失败时保留状态寄存器及完整异常报告。DMA reset 未证实停止，或 master 启动后发生异常时，缓冲区留在对应模块隔离列表；保持内核，不盲目释放、杀进程或继续重试，先复位/重启板卡。master不尝试猜测复位寄存器。详细规则见 references/troubleshooting.md。
8. 使用 `compare()` 判断结果：整数逐元素精确相等，浮点采用测试前固定的atol/rtol。NaN/Inf、形状或类型不匹配进入错误定位流程。
9. 保存JSON报告，注明环境、输入规格、DMA实际接收字节数或master完成状态、误差和验证阶段。计时报告同时注明 `transfer_wall_ms` 或 `call_wall_ms` 的测量起止点。
10. 验证 Linux／Qt 整机链路时使用 [Qt 触摸案例](examples/qt_demo/README.md)：Qt 主线程处理显示和触摸，后台服务持有硬件。显示和计算共用整机位流，按板卡附录初始化 framebuffer 与 evdev；依次检查两路计算、重复提交、界面响应和实体触摸，分别保存自动测试与人工验收结果。

报告按离线软件、位流构建、单板硬件和跨板迁移列出结果与证据。结合状态寄存器、设计或ILA确定故障原因；接口资料见 sources.md。

交付前按 [迁移验收表](references/migration-acceptance.md)检查。排错过程的写法参考 [真实故障案例](references/failure-case.md)。
