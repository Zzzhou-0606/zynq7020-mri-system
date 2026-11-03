# 最小计算案例：uint32 仿射变换

本例演示真实计算的材料与接口：`y[i]=(3*x[i]+7) mod 2^32`。输入/输出均是一维原生小端 uint32，N为1..4095，字节数为4N。包含 AXI Stream 和 m_axi 两个 HLS 顶层，数学语义一致。

两个顶层已通过Vitis HLS 2020.2的C仿真和综合，附软件参考、测试程序及寄存器配置。Stream版本进一步完成领航者7020整机实现和24组仿射实板测试，原FIFO回环同时保留。

## 1. 离线运行

从技能包根目录执行：

```sh
python examples/affine_u32/run_example.py --n 100
```

应输出 `offline_reference: pass`。参考使用64位计算后显式截取32位；另以Python任意精度整数独立核对。已知样例：输入 `[0,1,4294967295,2147483648,1431655765]`，输出 `[7,10,4,2147483655,6]`。

## 2. HLS构建

文件：`affine.hpp`、`affine.cpp`、`test_affine.cpp`、`build_hls.tcl`。目标part取自本板工程，示例时钟约束为10ns；整机实现后检查最终时序。

PowerShell 示例（先把尖括号中的路径和part替换为实际值）：

```powershell
$env:SKILL_HLS_PART='<本板完整FPGA part>'
$env:SKILL_HLS_TOP='affine_u32_stream' # 或 affine_u32_master
$env:SKILL_HLS_PROJECT='<尚不存在的构建目录>'
$env:SKILL_HLS_MODE='csim' # csim / synth / export
& '<Vitis HLS安装目录>\bin\vitis_hls.bat' -f '.\examples\affine_u32\build_hls.tcl'
```

每次使用新工程目录。C仿真应打印 `PASS: both interfaces, 5 lengths, 5236 values each`。按csim、synth、export顺序推进，每次保存日志和报告。IP打包错误按日志中的工具版本及错误码处理。

下面的Vivado集成从使用者本板的基础工程开始，保留该板PS配置、时钟、复位和外设约束。

## 3A. Stream集成

领航者7020已提供 [双通路工程与操作方法](../../references/dual-stream-board.md)：完整保留原FIFO回环，新增独立DMA和仿射计算IP。配套入口为根目录 `dual_stream_bringup.ipynb`，`board_suite.py` 自动执行交替传输、边界包、差异检测与重新加载检查。

Vivado连接为 `DMA M_AXIS_MM2S → affine_u32_stream.x → affine_u32_stream.y → DMA S_AXIS_S2MM`；计算IP使用 ap_ctrl_none，不需要 ap_start。PS控制 DMA，DMA memory master 接可访问DDR的路径，时钟/复位与数据位宽按设计匹配。

每拍是完整32位元素，TKEEP/TSTRB为0xF；输入TLAST在最后一拍置位，本例透传边带。测试数据使用uint32整元素包，DMA选择simple mode双通道配置。

完成连接验证、综合、实现和时序检查后，从同一次构建导出 bit/hwh，填写 [接口表](../../references/integration-contract.md)。

## 3B. Master集成

将 `affine_u32_master` 控制接口接PS可访问AXI-Lite，memory master接DDR路径；不需要AXI DMA。使用 ap_ctrl_hs、auto_restart关闭。按生成的 `xaffine_u32_master_hw.h` 和HWH确认x/y指针的偏移/宽度以及n的偏移，n单位为元素数。

本次HLS 2020.2生成的寄存器表对应以下配置，已保存为 [affine_master_hls2020_2.json](affine_master_hls2020_2.json)。重建后将它与新的头文件和HWH核对：

```json
{
  "protocol": "ap_ctrl_hs", "control_offset": 0,
  "pointers": {
    "x": {"offset": 16, "width_bits": 64},
    "y": {"offset": 28, "width_bits": 64}
  },
  "scalar_writes": [[40, 100]],
  "example_n": 100, "example_n_offset": 40
}
```

`scalar_writes` 的偏移与 `example_n_offset` 必须一致。换N必须同时更新命令、example_n和标量值。通用 master 实现也支持多输入输出及读写缓冲区，见 [适配器指南](../../references/master-adapter.md)。

## 4. 在持续存在的板端 Notebook 内核运行

从技能包根目录打开一个新Notebook。下面填入你实际构建的路径与IP名。`--hardware` 会下载位流，先确认可以替换PL且硬件独占。

```python
import sys
sys.path.insert(0, 'examples/affine_u32')
import run_example
run_example.main(['--hardware', '--interface', 'stream',
    '--bit', 'overlays/affine.bit', '--ip', '实际计算IP名称',
    '--dma', '实际DMA名称', '--n', '100'])
```

master分支用 `--interface master`，去掉 `--dma`，增加 `--contract examples/affine_u32/affine_master_hls2020_2.json`。运行前检查HWH名称、控制映射和DDR连线。

硬件调用不支持作为一次性命令行进程执行：发生超时时进程退出可能释放仍被访问的内存。若隔离缓冲区，保持Notebook内核，先复位/重启板卡。正常结果为 `board_dma: pass` 或 `board_m_axi: pass`。

## 5. 验收

依次测试N=1/16/100/1024/4095（满足本DMA长度上限）；每组含已知边界和固定seed随机数。确认错误参考产生mismatch并保存报告。验收表分别记录C仿真、RTL仿真、整机时序和实板结果。
