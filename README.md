# zynq7020-mri-system

基于 Zynq-7020 的脑 MRI 完整神经网络部署与分析系统。

当前发布版本：`mri_full_overlap_125mhz_20261102`。SD 启动包已通过上板验证。

当前版本：OVERLAP，125 MHz，INT16，batch=4，runtime_variant=overlap-v1，加速器ABI 6、标识0x46554c4c。
冻结模型A169/B12/C6/S2，A34/B38/C59共131张。既有实板记录C++完整分类19.89259341秒，
引擎累计17.742254187秒，主机网络全流程22.8657557秒，计时边界见[性能说明](report/current_performance.md)。

| 目的 | 入口 |
|---|---|
| 使用现成可上板文件 | [build/release](build/release/README.md) |
| 制作SD启动分区、连接与运行 | [board](board/README.md) |
| 编译、综合、生成完整启动包 | [build](build/README.md) |
| 修改HLS/ARM/服务/UI源码 | [src/fpga](src/fpga/)与[src/shared](src/shared/) |
| 打开最终Vivado工程 | [d2.xpr](build/vivado/mri_full/d2.xpr) |
| 查看最终HLS工程、RTL和IP | [build/hls/mri_full](build/hls/mri_full/) |
| 上位机源码和运行环境 | [src/README.md](src/README.md) |
| 模型训练、预处理及量化导出 | [src/model](src/model/README.md) |
| 模型权重和量化参数 | [模型输入](data/models/README.md) |
| 训练数据要求和固定索引 | [训练索引](data/training/README.md) |
| 正式板测 MRIRAW1 输入 | [mri_input.bin](data/reference/mri_input.bin)，说明见 [MRI 验证](sim/mri/README.md) |
| 五例演示影像及已有结果 | [test_cases](data/test_cases/oasis1/README.md) |
| 正式实测与参考结果比较 | [sim](sim/README.md) |
| PYNQ技能 | [skill](skill/README.md) |
| 当前设计和实现报告 | [report](report/README.md) |

目录分工：`src/` 为源码，`build/` 为工程、脚本和可部署成品，`board/` 为部署入口，`data/` 为模型与输入数据，`sim/` 为正式验证结果，`skill/` 为可编辑技能包，`report/` 为设计资料。可直接分发的程序、模型和压缩包位于 `build/release/`。
Linux内核、基础rootfs和U-Boot作为平台输入提供，本包不等同于完整操作系统源码发行版。

## 获取完整仓库与启动上位机

本仓库使用 Git LFS 保存大文件。先安装 Git 与 Git LFS，再在 PowerShell 中执行：

```powershell
git lfs install
git clone https://github.com/Zzzhou-0606/zynq7020-mri-system.git
Set-Location zynq7020-mri-system
git lfs pull
& ./build/release/host/mri_workstation_slim/mri_workstation.exe
```

完整获取请使用上述方式；网页源码 ZIP 可能只包含 LFS 指针，不能直接作为运行包。
上位机适用于 Windows 10/11 x64，需保留整个 `mri_workstation_slim` 目录。
Python、运行依赖、WebView2 和模型均已包含；CUDA 分割另需兼容的 NVIDIA 驱动，也可选择 CPU。
启动后自动创建空白病例库和设置目录。使用步骤见 [上位机说明](build/release/host/usage.md)。
板端部署见 [board/README.md](board/README.md)，源码环境见 [src/README.md](src/README.md)，
HLS、Vivado 和启动包重建见 [build/README.md](build/README.md)。

## 许可

主项目自研源码采用 [MIT License](license.txt)。随包第三方代码、库、平台文件及模型按各自的许可和来源条款使用，原有许可证与版权声明保留。
