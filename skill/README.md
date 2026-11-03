# 通用 PYNQ 加速器联调技能包

让新团队从自己的板卡和 IP 出发，完成接口核对、参考比对、故障定位及 Linux／Qt 接入。通用入口支持 AXI DMA simple mode 和显式寄存器契约的 HLS `m_axi`；附 FIFO 回环、`uint32` 仿射计算和触摸演示案例。

## 第一次使用

1. 阅读 [逐步快速开始](pynq-accelerator-debug/references/quickstart.md)，选择离线、DMA、master 或 Qt 入口。
2. 进入 `pynq-accelerator-debug/`，执行 `python -m unittest discover -s tests -v` 和 `python examples/affine_u32/run_example.py --n 100`。需要 Python 3.8+ 与 NumPy，预期分别为 `OK` 和 `offline_reference: pass`。
3. 填写 [接口配置表](pynq-accelerator-debug/references/integration-contract.md)，指定自己的 bit/hwh、IP 名称、数据规格及参考实现。
4. 在板端 Jupyter 打开 `bringup.ipynb` 或 `dual_stream_bringup.ipynb`，先执行默认离线模式，再按接口和硬件授权启用实板步骤。
5. 按 [迁移验收表及报告模板](pynq-accelerator-debug/references/migration-acceptance.md) 保存结果。使用大模型时，从 [提示词](pynq-accelerator-debug/references/prompts.md) 选取当前任务，附上实际文件。

同型号 7020 的 Qt 演示从 [板卡附录](pynq-accelerator-debug/references/qt-navigator7020.md) 开始。运行文件已放入 `pynq-accelerator-debug/overlays/` 和 `board_support/`，无需回到原工程取文件。

## 交付内容与要求对应

| 要求中的类别 | 本包内容 | 主要入口 |
|---|---|---|
| 提示词工作流 | 首次接入、超时、数值错误、换板换题、整机部署的输入材料与执行顺序 | [SKILL.md](pynq-accelerator-debug/SKILL.md)、[提示词](pynq-accelerator-debug/references/prompts.md) |
| 案例模板 | FIFO Notebook、双接口仿射 HLS、双通路 Notebook、Qt 页面及任务服务 | [案例说明](pynq-accelerator-debug/README.md)、[仿射](pynq-accelerator-debug/examples/affine_u32/README.md)、[Qt](pynq-accelerator-debug/examples/qt_demo/README.md) |
| 校验脚本 | 数值参考、DMA/master 完成与异常处理、实板矩阵、软件测试、硬件拓扑检查 | [软件脚本](pynq-accelerator-debug/scripts/)、[测试](pynq-accelerator-debug/tests/)、[硬件附件](hardware/navigator7020/README.md) |
| 踩坑清单 | 触发条件、取证、定位步骤、修复与回归 | [排错表](pynq-accelerator-debug/references/troubleshooting.md)、[完整故障案例](pynq-accelerator-debug/references/failure-case.md)、[显示触摸排错](pynq-accelerator-debug/references/qt-navigator7020.md) |

以下逐项说明场景、用法、失效条件、验证效果及经验来源。

## 1. 协作提示词与联调流程

- **适用场景：** 大模型协助首次接入、已有错误定位或迁移评估。
- **使用方法：** 打开 [prompts.md](pynq-accelerator-debug/references/prompts.md)，填写板卡、版本、接口、文件路径和操作范围；按 [SKILL.md](pynq-accelerator-debug/SKILL.md) 的环境→契约→最小计算→边界→报告顺序执行。
- **失效条件：** 缺少独立参考、寄存器来源或配套硬件信息时，相应步骤需要先补齐材料；提示词不能提供缺失的硬件契约。
- **已验证效果：** 工作步骤用于本包 FIFO、仿射及 Qt 联调，并形成 R1、R3、R4 的计算和恢复证据。模板是上述过程的整理版本，未单独统计提示词成功率。
- **经验来源：** [重复下载后驱动失效](pynq-accelerator-debug/references/failure-case.md)、HLS 重试与显示触摸联调，沉淀出先确认接口、分层验收、保留完整报告的流程。

## 2. DMA 回环与通用数据传输

- **适用场景：** AXI DMA simple mode，MM2S/S2MM 双通道，一次固定长度传输，硬件由一个调用者持有。
- **使用方法：** 从 [bringup.ipynb](pynq-accelerator-debug/bringup.ipynb) 开始；改 `BITFILE`、`DMA_NAME`、输入和参考。核心调用为 [pynq_debug.py](pynq-accelerator-debug/scripts/pynq_debug.py) 中的 `run_dma()`。
- **失效条件：** SG DMA、连续视频、不同控制协议需要专用适配；输入输出字节数、TLAST、长度上限与硬件不一致时，按报告检查接口。
- **已验证效果：** 首次 FIFO 18 组通过；双通路版本 FIFO 27 组、仿射 24 组及重新加载后 2 组通过。
- **经验来源：** 重复 `download()` 后复用旧驱动出现 `DMA channel not started`，新建 Overlay 后恢复；厂商 FIFO 缓存行为与 DMA 等待逻辑促成接收先行、有界轮询、状态记录的实现。

## 3. 仿射计算与 HLS 工程模板

- **适用场景：** 用最小真实计算打通 HLS→Vivado→PYNQ，或替换为自己的流式计算。
- **使用方法：** [affine_u32](pynq-accelerator-debug/examples/affine_u32/README.md) 提供 `y=(3x+7) mod 2^32` 的独立参考、C++ 顶层、C 测试、Tcl 和运行入口；[双通路指南](pynq-accelerator-debug/references/dual-stream-board.md) 保留 FIFO 并增加独立仿射通路。
- **失效条件：** 示例约定一维小端 uint32，N=1..4095；换 dtype、布局、算法或板卡时同步调整参考、数据协议与硬件工程。HLS part 使用目标板完整器件型号。
- **已验证效果：** Stream/master 两顶层 C 仿真及综合通过，每个函数覆盖 5 种长度、5236 个值；Stream 进一步完成 24 组计算实板验收。
- **经验来源：** HLS 在受限运行环境启动失败、Windows 工程路径处理及 IP 打包版本号溢出，分别整理为环境核对、以工程名打开项目和任务内打包修复步骤。

## 4. m_axi 适配器

- **适用场景：** HLS `ap_ctrl_hs` 控制、加速器直接读写 DDR，包含多个命名输入/输出缓冲区。
- **使用方法：** 按 [master 指南](pynq-accelerator-debug/references/master-adapter.md) 填写指针宽度、寄存器偏移、标量与内存方向；调用 [pynq_master.py](pynq-accelerator-debug/scripts/pynq_master.py) 的 `run_m_axi()`。仿射目录提供配套 JSON 样例。
- **失效条件：** `ap_ctrl_chain`、持续 auto_restart、未知复位协议和非配套寄存器映射需要重新适配；指针契约以本次生成头文件与 HWH 为准。
- **已验证效果：** 11 项模拟 MMIO 测试覆盖控制顺序、done/idle、缓存、超时、指针越界、契约冲突和原地更新；master HLS 已通过 C 仿真及综合。master 的独立实板验收仍待接入相应硬件。
- **经验来源：** 故障注入中的读清除 done、未写输出和无法确认结束情形，形成独立控制路径和缓冲区处理规则。

## 5. Linux／Qt／屏幕与触摸扩展

- **适用场景：** 将已通过参考比对的 PL 加速器接入可交互整机。
- **使用方法：** 先读 [Linux／Qt 部署指南](pynq-accelerator-debug/references/linux-qt-deployment.md)，复用 [Qt 页面和后台服务](pynq-accelerator-debug/examples/qt_demo/README.md)。本板按 [7020 附录](pynq-accelerator-debug/references/qt-navigator7020.md) 启动，其他板替换显示、触摸和位流适配层。
- **失效条件：** 内核 ABI、Qt 运行库、屏幕时序、触摸管脚或整机位流不匹配会影响加载与交互。随附 `.ko` 适用于 `5.4.0-xilinx-v2020.2`；换内核按源码重编译。单独回环位流不含 LCD 输出。
- **已验证效果：** 800×480 屏幕和触摸由用户现场确认，两通路 PASS；46 次按下/46 次释放，22 份 NPZ 共 18844 个元素独立复核通过；停止/启动恢复后两通路共 8 组通过。断电冷启动与开机自启仍列入后续部署验收。
- **经验来源：** 缺少 framebuffer、CMA RAM 映射失败、Goodix I²C 通信失败及后台线程 DMA 初始化异常，整理为内核 DMA 帧缓冲、厂家触摸流程、I²C 控制器恢复和主线程初始化的实现。

## 6. 校验、排错与迁移交付

- **适用场景：** 判断一次结果是否可信、定位错误、交给新团队或迁移到新板。
- **使用方法：** 运行 `tests/`，使用 [board_suite.py](pynq-accelerator-debug/examples/affine_u32/board_suite.py) 保存实板矩阵，按 [排错表](pynq-accelerator-debug/references/troubleshooting.md) 取证，填写 [报告模板](pynq-accelerator-debug/references/migration-acceptance.md)。硬件附件含拓扑检查脚本和最终资源、时序、DRC 报告。
- **失效条件：** 软件模拟只覆盖所注入的控制行为；更换位流、内核或接口后，按迁移表重做受影响的硬件检查。数值比较需要与算法匹配的参考和预先固定的容差。
- **已验证效果：** R4 本机与板端各 34 项软件测试通过；R3 错误参考和两路超长请求共 3 项负向检查符合预期。最终 R4 实现 WNS=1.176 ns、DRC 0 Error；剩余 I/O 时序约束及未启用摄像头相关检查项见 R4 硬件构建记录。
- **经验来源：** 真实驱动重载、显示触摸故障与模拟超时、短包、错误状态，统一形成“触发→证据→最小验证→修复→回归”的排错记录。

## 通用性与换题换板

通用 Python 接口、提示词、参考比对和报告方法不依赖 MRI 数据、模型或固定 IP 名称。换题时替换输入生成、参考函数和接口契约；换板时使用新板配套的镜像、PS/DDR 配置、位流与外设适配。

本包的实板证据来自领航者 7020。第二块板的成功结果应在完成 [迁移验收](pynq-accelerator-debug/references/migration-acceptance.md) 后加入记录。附带位流是本板案例材料，通用方法通过参数与板卡适配层复用。

## 目录与材料

```text
skill/
  README.md                     本交付入口与逐项说明
  pynq-accelerator-debug/
    SKILL.md / README.md         智能体流程与详细使用说明
    *.ipynb                     FIFO、双通路入口
    scripts/ / tests/            通用实现与离线校验
    references/                 接口、提示词、部署与排错
    examples/                   仿射与 Qt 案例模板
    overlays/                   本板三组 bit/hwh
    board_support/              本板 ARM 程序、模块和对应源码
  hardware/navigator7020/        R3/R4 可编辑硬件附件及重建入口
```

来源与保留声明：[sources.md](pynq-accelerator-debug/sources.md)、[板卡源码及许可证](pynq-accelerator-debug/board_support/navigator7020/NOTICE.md)。硬件构建使用 Vivado/Vitis HLS 2020.2；离线代码依赖 Python/NumPy，板端调用依赖匹配镜像中的 PYNQ；Qt 案例使用 Qt 5。软件和硬件工具本体、SD 镜像由使用者准备。


MRI 主系统使用独立的 Linux/Qt 运行时。FIFO/仿射和显示触摸是本技能的可复用案例。已保存的正式 R4 输出见 [数值结果](../sim/pynq/README.md)。
