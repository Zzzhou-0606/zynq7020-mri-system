# 板卡运行材料及源码

- `pynq-qt-demo`：本技能包的 Qt 页面，完整源码为 `examples/qt_demo/main.cpp` 和 `qt_demo.pro`。动态链接板端现有 Qt 5.12.8；运行包不包含 Qt 动态库。
- `modules/skill_dmafb.ko`：`src/skill_dmafb.c`，GPL-2.0-only。使用运行内核的DMA API分配和映射显示缓冲区。
- `modules/skill_vendor_goodix.ko`：正点原子资料盘 `Linux驱动例程/26_touchscreen/gt9xx.c`，源码原样保存在 `src/gt9xx.c`，保留作者、版权及GPL v2声明。已针对本板内核重编译。
- `dtc`：从本镜像配套Linux构建树的 `scripts/dtc` 编译，完整编译输入（含生成的lexer/parser和libfdt）在 `dtc_sources.zip`。许可证保留在源文件头，GPL文本见 `GPL-2.0.txt`。

模块编译使用镜像内核的 `.config`、头文件和 `Module.symvers`，版本为 `5.4.0-xilinx-v2020.2`。运行 `python3 rebuild_modules.py`：复制 `/lib/modules/$(uname -r)/build` 到独立目录，补充 `kernel_generated_asm.zip` 中来自同版本Linux的生成头文件，执行 `make prepare0`，再构建两个模块。输出与日志留在本目录。生成头文件沿用对应Linux头文件的许可证。

dtc编译输入在匹配Linux构建树的 `scripts/dtc` 下；执行该树的 `make scripts_dtc`，或使用发行版的 `device-tree-compiler` 替换随包工具。对应上游：[Xilinx Linux xilinx-v2020.2](https://github.com/Xilinx/linux-xlnx/tree/xilinx-v2020.2/scripts/dtc)。
