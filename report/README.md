# 设计与实现资料

- [设计报告](design_report.pdf)
- [大模型协作记录](llm_collaboration.pdf)
- [复现操作说明](reproduction.md)
- [正式实测与参考结果](../sim/README.md)
- [五例演示用例](../data/test_cases/oasis1/README.md)
- [当前性能与计时边界](current_performance.md)
- [125 MHz 综合与实现报告](fpga/)
- [冻结网络设计](reference/network_design_frozen.md)
- [通信协议](reference/protocol.md)
- [板卡外设](reference/board_peripherals.md)
- [上位机使用说明](../build/release/host/usage.md)

当前系统采用加速器 ABI 6、125 MHz。部署以 [board](../board/README.md) 为准，重建以 [build](../build/README.md) 为准。
reference 中包含冻结网络、通信协议和外设接口说明。
