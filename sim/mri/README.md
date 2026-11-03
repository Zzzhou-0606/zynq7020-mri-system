# MRI 正式板测结果

保存的 2026-11-01 正式 HTTP 板测：125 MHz、overlap-v1、加速器 ABI 6，INT16、batch=4，131 张切片和 34 次硬件调用。参考为同输入的历史 pipeline-validator 实板结果；它用于回归比较，不是独立软件黄金参考或新增准确率证据。

- [board_result.json](board_result.json)：实测分类字段、逐批计时和工作量。
- [reference_result.json](reference_result.json)：保存的参考结果。
- [comparison.csv](comparison.csv)：三个方向概率及路由、类别、二级输出逐项比较。
- [timing.csv](timing.csv)：历史与实测计时，区间互有包含，不能相加。
- [run_info.json](run_info.json)：输入指纹、版本与证据范围。

输入为 [mri_input.bin](../../data/reference/mri_input.bin)，格式为 MRIRAW1，共 131 张切片、10,731,552 字节。参考与实测使用的输入逐字节相同，版本和 SHA-256 见 [run_info.json](run_info.json)。位流、模型和 ARM 推理程序的 SHA-256 均与当前交付相同。计算记录早于 11 月 2 日网络修复；整理过程没有新增板测。该输入与五例影像分别提供，当前文件索引没有将该输入指派给某个公开病例编号。

在交付根目录复核保存结果：`python sim/mri/compare_results.py`。

重新上板时运行：

```powershell
python board/run_classification.py --board <实际板卡IP> --input data/reference/mri_input.bin --expected-result sim/mri/reference_result.json --output F:/mri_board_result_new
```

复核保存数据与重新运行硬件是两种操作。硬件重新运行需要板卡完成配对，输出到新的包外目录。计时不包含 PC MRI 切片准备和板端启动。
