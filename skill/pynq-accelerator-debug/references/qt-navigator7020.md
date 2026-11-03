# 领航者 7020：800×480 LCD 与 GT911 附录

本附录对应 ATK-DF7020、ATK-MD0700R 800×480 RGB 屏、PYNQ 2.7 镜像和 Linux `5.4.0-xilinx-v2020.2`。通用页面和任务协议见 [Qt 案例](../examples/qt_demo/README.md)。

## 硬件组合

整机位流 `qt_dual.bit/.hwh` 同时保留：

- `axi_dma_0`，`0x40400000`：FIFO 回环。
- `axi_dma_affine`，`0x40410000`：自由运行 `uint32` 仿射 `3x+7`。
- `video/axi_vdma`，`0x43000000`：显示帧扫描，配套 LCD 时序发生器、动态像素时钟和 RGB 输出。
- 两路计算 DMA 共用 PS HP1，显示 VDMA 使用 PS HP0；计算时钟 100 MHz。

LCD 逻辑沿用厂商 `6_ov5640_lcd` 工程。该工程还保留未启用的摄像头输入；本案例运行 LCD 输出和双计算通路。LCD ID 实读为 `0x7084`。显示初始化使用镜像已有的 `pynq.lib.video2lcd`。

| 触摸信号 | FPGA 管脚 | PS 连接 |
|---|---|---|
| SCL | R19 | I2C1 EMIO |
| SDA | P20 | I2C1 EMIO |
| RESET | M19 | GPIO54 / EMIO0 |
| INT | U19 | GPIO55 / EMIO1 |

约束为 LVCMOS33，SCL、SDA 和 RESET 设内部上拉。设备树使用 I2C1 `e0005000`、100 kHz、地址 `0x14`。GPIO 控制器 phandle 由启动脚本读取当前设备树。Goodix event 编号由 sysfs 设备名识别。

## Linux 显示和触摸

`skill_dmafb.ko` 注册 `pynq-skill-fb`，向 Qt 提供 `/dev/fb0`。驱动用 `dma_alloc_wc()` 分配连续帧缓冲，用 `dma_mmap_wc()` 映射到用户空间；800×480、24 bit、BGR888、每行 2400 字节。VDMA 从 ioctl 返回的 DMA 地址读取，帧缓冲由内核设备持有。

触摸使用正点原子资料盘 `Linux驱动例程/26_touchscreen/gt9xx.c`，以 `skill_vendor_goodix.ko` 针对当前内核编译。设备树兼容串为 `goodix,gt9xx`，属性为 `reset-gpio` 和 `interrupt-gpio`。驱动依次完成硬件复位/地址选择、软件复位、芯片 ID 与 7 字节配置读取，然后注册 evdev。实读 ID 911、版本 `1060`、坐标范围 800×480、最大触点数 5；触摸验证覆盖单指点击。

本镜像已有 Qt 5.12.8 的 Widgets、Network、linuxfb 与 evdev 运行库。就绪包中的 ARM 程序使用现有运行库，未替换 Qt。界面用英文短标签与 DejaVu Sans，完整占用 800×480。

## 启动与停止

将本交付的整个 `pynq-accelerator-debug/` 上传到 Jupyter 工作目录。`board_support/navigator7020/` 已包含两个内核模块、ARM Qt 程序、dtc 和对应源码；`overlays/qt_dual.bit/.hwh` 是最终已验收版本。

在板端终端进入包目录：

```sh
chmod +x board_support/navigator7020/dtc board_support/navigator7020/pynq-qt-demo
sudo python3 examples/qt_demo/boards/navigator7020.py start
sudo python3 examples/qt_demo/boards/navigator7020.py status
# 任务完成后停止：
sudo python3 examples/qt_demo/boards/navigator7020.py stop
```

若位流采用其他文件名，给 `start` 增加 `--bit /absolute/path/qt_dual.bit`。位流和同名 HWH 应来自同一次构建。

启动顺序：确认硬件服务空闲 → 停止已有 LCD VDMA → 加载完整位流 → 建立内核帧缓冲 → 配置 LCD/VDMA → 复位 I2C1 控制器并绑定厂家触摸驱动 → 启动任务服务 → 启动 Qt。该板 I2C1 为触摸专用；脚本发现其他 I2C1 客户端时会报告冲突。

停止顺序：后台服务确认任务结束并释放计算资源 → 关闭 Qt → 停止 LCD VDMA。内核帧缓冲保留，下一次启动可以复用。重新刷写 PL 前先运行 `stop`；卸载帧缓冲驱动前同样先停 VDMA。

每次启动的日志、截图和任务 JSON/NPZ 保存到 `reports/qt_runtime/<时间>/`，当前进程与日志位置保存在 `reports/qt_runtime/runtime.json`。启动脚本不修改 SD 启动文件；开机自启可按 [Linux部署指南](linux-qt-deployment.md) 的依赖顺序集成。

## 从源码重建

Qt 使用 `examples/qt_demo/qt_demo.pro`。有匹配开发包的目标环境运行 `qmake && make -j2`。随包程序使用 Qt 5.11 公共头文件编译，并在 Qt 5.12.8 板端运行库上验证；重建优先使用配套版本的开发包。

模块源码在就绪包 `board_support/navigator7020/src/`。使用运行内核对应的头文件、配置和 `Module.symvers`：

```sh
make -C /path/to/prepared/kernel-build M="$PWD/board_support/navigator7020/src" modules -j2
```

配套镜像的 `/lib/modules/$(uname -r)/build` 缺少部分生成文件。就绪包提供 `rebuild_modules.py` 和本镜像的生成头文件补充：先复制到独立构建目录，补齐引导构建所需的头文件，执行 `make prepare0` 再编译模块。运行 `python3 board_support/navigator7020/rebuild_modules.py`，输出在 `src/` 下，日志为 `module_rebuild.log`。换内核时使用新内核的配套开发树重新编译。

Vivado 工程与 `build_display.tcl`、完整 IP 库、板级约束见 [本交付硬件附件](../../hardware/navigator7020/README.md)；在新目录运行 `vivado -mode batch -source build_display.tcl`，输出 bit/hwh/XSA。已归档可编辑工程 `qt_dual_vivado_sources.zip`，最终实测位流及布局布线检查报告也随硬件包交付。

## 常见故障与定位

| 现象 | 定位与采用的实现 |
|---|---|
| 原 PYNQ 镜像无 `/dev/fb0` | 加入 DMA 帧缓冲模块和设备树节点，以内核分配的缓冲区连接 Qt 与 VDMA |
| simplefb 绑定 CMA RAM 报 `-12` | CMA RAM 使用 DMA 分配/映射接口；用 `dma_alloc_wc` / `dma_mmap_wc` 建立映射 |
| 通用 Goodix 驱动读版本/后续坐标失败 | 对照厂商复位流程和短配置读取，改用原版 `gt9xx.c`，重新初始化 I2C1 后稳定输出触摸事件 |
| I2C 控制器保持 busy | 解绑触摸专用 I2C1，复位该控制器并重新绑定；Linux 时钟驱动继续保持 SLCR 解锁访问 |
| 后台线程初始化 DMA 报 event loop 错误 | 主线程创建 PYNQ DMA 对象，工作线程调用已创建对象 |

已验证的是整套厂家驱动配置的效果。软件复位、读取长度、上拉和控制器状态分别对故障的贡献尚未单独分离。保存的最终计算数据见 [PYNQ 正式输出](../../../sim/pynq/README.md)。

来源：本地正点原子资料盘的 `6_ov5640_lcd`、Navigator_7020 `system.xdc`、`26_touchscreen/gt9xx.c`；[Xilinx Linux 2020.2 Cadence I2C 驱动](https://github.com/Xilinx/linux-xlnx/blob/xilinx-v2020.2/drivers/i2c/busses/i2c-cadence.c)；[Zynq reset 驱动](https://github.com/Xilinx/linux-xlnx/blob/xilinx-v2020.2/drivers/reset/reset-zynq.c)。
