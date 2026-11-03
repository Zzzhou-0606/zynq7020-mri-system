# 首次使用：从解压到一份可判断的报告

## 选入口

| 你的条件 | 入口 | 此时可以证明什么 |
|---|---|---|
| 只有电脑，没有板卡 | 下述离线命令 | 比较器、参考模型及模拟接口行为 |
| 有 PYNQ 板卡与 DMA 回环 bit/hwh | 根目录 bringup.ipynb | 该板的 DMA 数据路径 |
| 有 AXI Stream 计算 IP | [计算案例](../examples/affine_u32/README.md) | 接入后核对计算结果 |
| IP 通过 m_axi 直接读写 DDR | [master 适配器](master-adapter.md) | 显式寄存器契约下的一次调用 |
| 最终产品含 Linux／Qt | [部署扩展](linux-qt-deployment.md) | 逐层部署与整机验收方法 |

镜像只在当前系统不满足要求时处理。先按 [连接说明](connection.md) 确认环境；已有可用 PYNQ 不需要再刷卡。

## 1. 准备文件

解压并保持完整目录。`README.md`、`bringup.ipynb`、`scripts/`、`references/` 应在同一根目录。本交付附带领航者 7020 的 `overlays/dma_tutorial`、`affine_dual`、`qt_dual` 三组 bit/hwh。其他板卡按接口表换成自身配套文件。

在电脑或板端终端进入这个根目录（不是外层 `skill/`）：

```sh
python -m unittest discover -s tests -v
python examples/affine_u32/run_example.py
```

第一条以 `OK` 结束；第二条输出 `offline_reference: pass` 并保存 JSON，报告 `hardware_tested=false`。缺少 NumPy 时使用已有的含 NumPy 环境；PYNQ 镜像通常自带，不自动升级板端包。

## 2. 上传和打开

通过已有文件传输方式上传整个目录。使用Jupyter经典文件页时，可上传ZIP，再在板端终端用Python标准库解压到新的空目录。打开其中的 `bringup.ipynb`，保持它与scripts的相对路径。

在 Notebook 首单元运行后，应看到 Python、NumPy、PYNQ 版本以及板端架构。`pynq=null` 或 Windows 平台说明此内核不能做板端测试。`请在技能包目录打开 Notebook` 表示 Notebook 与 scripts 的相对位置错误。

## 3. 先执行默认模式

保持 `RUN_HARDWARE=False`，顺序执行所有单元。参数单元应显示输入和输出字节数；比较器返回 `pass:true`。缺少 bit/hwh 时应显示 `SKIPPED`，这是预期行为。若提供了 bit/hwh，元数据单元会读取 IP 信息，但不下载。

此步骤只说明环境及离线入口可用。硬件调用使用根目录 Notebook，并在确认契约与硬件替换范围后显式启用 `RUN_HARDWARE=True`。

## 4. 核对契约并运行硬件

按 [配置表](integration-contract.md) 记录实际板卡、同次构建 bit/hwh、IP 名称、接口模式、字节数和参考输出。确认当前 PL 可替换、无其他进程使用硬件后，再设 `RUN_HARDWARE=True`。

| 单元 | 成功信号 | 不符合时 |
|---|---|---|
| 元数据 | 名称与 HWH 一致，DMA simple mode 双通道 | 从连接图确认目标IP的完整层级名称 |
| 下载及传输 | `status:pass`，实际字节数符合契约 | 保留报告，查排错表 |
| 回环回归 | 各长度均 pass | 此单元只适用于恒等回环；计算 IP 必须换用自身参考 |
| JSON | 路径存在且有输入规格、比较结果 | 保存完整报告，不只截取绿色 pass |

`mismatch`表示传输结束但计算不一致；`error`表示执行异常；`SKIPPED`表示该步骤未运行。出现 `buffers_quarantined` 后保持当前内核和缓冲区，先恢复板卡硬件，再开始新会话。

## 5. 交给下一位使用者

提供配置表、bit/hwh 的构建来源、实际执行命令、输入生成规则、完整 JSON，以及 [验收表](migration-acceptance.md)。交付说明使用可迁移的相对路径。
