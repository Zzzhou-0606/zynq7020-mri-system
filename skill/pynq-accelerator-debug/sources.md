# 来源与核对范围

查阅日期：2026-10-25。使用者更换 PYNQ/IP 版本时应重新核对。

- [PYNQ Overlay 官方说明](https://pynq.readthedocs.io/en/latest/pynq_libraries/overlay.html)：bit/hwh、download=False、ip_dict。已阅读页面。
- [PYNQ allocate 官方说明](https://pynq.readthedocs.io/en/latest/pynq_libraries/allocate.html)：连续缓冲区、设备地址、flush/invalidate。已阅读页面。
- [PYNQ DMA 官方源码文档](https://pynq.readthedocs.io/en/latest/_modules/pynq/lib/dma.html)：simple/SG 差异、transfer、wait、长度、状态位和缓冲区生命周期。已阅读相关源码；本包实现是独立诊断封装。
- [OpenAI Skill 编写说明](https://developers.openai.com/plugins/build/skills)：SKILL.md 元数据及支持资源组织。已阅读页面。
- 本地厂商《领航者 ZYNQ 之 PYNQ 开发指南 V3.2》PDF 第 19、22–25 页：镜像、串口、PS 网口、DHCP/Jupyter。通过文本抽取核对内容，未复制整本手册。
- 本地厂商 `ZYNQ_7020_PYNQ.zip`：DMA Notebook及system.bd提供FIFO回环案例。通用包提供使用方法；7020附件版包含对应bit/hwh。

R2补充核对：

- [AMD UG1399 2020.2 Block-Level I/O Protocols](https://docs.amd.com/r/2020.2-English/ug1399-vitis-hls/Block-Level-I/O-Protocols)：ap_ctrl_none、ap_ctrl_hs与AXI-Lite组合控制。
- [AMD UG1399 Controlling Hardware](https://docs.amd.com/r/2021.2-English/ug1399-vitis-hls/Controlling-Hardware)：生成的驱动头文件、控制状态和auto_restart。具体偏移仍以使用者本次构建为准。
- 本地MRI V5的HLS/ARM源码和部署说明：提供固定预留DDR、ABI和整机配套的实例分析。

R4补充核对：

- 本地正点原子 `ZYNQ_7020_PYNQ.zip/6_ov5640_lcd`：LCD/VDMA工程、RGB约束及镜像内 `pynq.lib.video2lcd` 驱动；在此基础上增加两条计算DMA通路。
- 本地 `Linux驱动例程.rar/26_touchscreen/gt9xx.c`：已逐项核对复位时序、软件复位、短配置读取、中断触发及事件释放，原源码编译后的驱动完成实体触摸验收。
- [Xilinx Linux 2020.2 Goodix源码](https://github.com/Xilinx/linux-xlnx/blob/xilinx-v2020.2/drivers/input/touchscreen/goodix.c)：用于对照通用驱动与厂商驱动差异。
- [Cadence I2C源码](https://github.com/Xilinx/linux-xlnx/blob/xilinx-v2020.2/drivers/i2c/busses/i2c-cadence.c)及[Zynq reset源码](https://github.com/Xilinx/linux-xlnx/blob/xilinx-v2020.2/drivers/reset/reset-zynq.c)：控制器状态、时钟管理和复位核对。
