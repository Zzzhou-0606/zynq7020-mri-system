# 正式验证结果与复核入口

本目录保存经过精简的正式实测与参考结果。保留数值、版本、计时边界及复核方法，便于核查功能正确性。

| 内容 | 入口 |
|---|---|
| MRI 同输入正式板测、历史参考和逐字段对比 | [mri](mri/README.md) |
| PYNQ R4 实板输入、独立整数参考和实际输出 | [pynq](pynq/README.md) |
| 五例 OASIS-1 演示影像与已有预测/分割 | [测试用例](../data/test_cases/oasis1/README.md) |
| 最终资源、时序与 DRC | [FPGA 报告](../report/fpga/) |

MRI 保存数据复核：`python sim/mri/compare_results.py`。
PYNQ 保存数组复核：`python sim/pynq/verify_vectors.py`（需要 NumPy）。

上述命令复核已有文件。重新运行硬件按 [板端部署](../board/README.md) 和 [技能包](../skill/README.md) 操作，结果输出到新的包外目录。
