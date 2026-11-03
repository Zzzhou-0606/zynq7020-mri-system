# PYNQ R4 正式输出

保留 22 组最终 R4 实板 DMA 调用的 JSON/NPZ，共 18,844 个 uint32 元素，包含显示联调与停止后恢复阶段的 FIFO、仿射输出。每份 NPZ 包含 input、expected、actual，数值载荷与原保存文件一致。

[comparison.csv](comparison.csv) 按用例列出元素数与比较结果，[summary.json](summary.json) 汇总范围。FIFO 参考为 y=x；仿射参考为 y=(3x+7) mod 2^32。本次使用独立整数运算重算保存数组，全部一致，没有重新调用硬件。

在交付根目录运行 `python sim/pynq/verify_vectors.py` 可复核保存数组，需要 NumPy。使用硬件和迁移到其他板卡的方法见 [技能包](../../skill/README.md)。
