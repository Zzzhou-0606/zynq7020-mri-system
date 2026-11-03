# m_axi 直接访问 DDR：显式契约适配器

入口：[scripts/pynq_master.py](../scripts/pynq_master.py)。此适配器已提供可执行实现，已完成模拟 MMIO 与 HLS 检查，独立 master 实板验收需要匹配硬件。

## 支持条件

- 标准 HLS `ap_ctrl_hs`，AXI-Lite 控制寄存器偏移0；start位0、done位1、idle位2、auto_restart位7。
- 单次独占调用，auto_restart关闭；每次调用以done和idle判断完成。
- 命名的多个输入、输出或读写缓冲区；每个缓冲区绑定独立32/64位指针。64位指针要求低字在前、相邻高字在后。
- PYNQ `allocate` 管理的连续设备内存。用户提供的物理地址、固定预留DDR和共享进程分配器不由此实现接管。

不支持 ap_ctrl_chain、自由运行 master、并发调度、含隐藏指针的描述符、必须别名重叠的缓冲区，以及需要特殊寄存器握手的控制器。DMA 的 TLAST/收到字节数不适用于本接口。

## 调用模板

在技能包根目录创建Notebook，从当前构建的HWH和驱动头文件取得下列 `verified_*` 配置值。

```python
import sys
sys.path.insert(0, 'scripts')
from pynq_master import run_m_axi
from pynq_debug import TransferFailure, save_report

contract = {
    'protocol': 'ap_ctrl_hs',
    'control_offset': 0,
    'pointers': {
        'input': {'offset': verified_input_offset, 'width_bits': verified_input_width},
        'output': {'offset': verified_output_offset, 'width_bits': verified_output_width},
    },
    'scalar_writes': [[verified_n_offset, input_element_count]],
}
buffers = {
    'input': {'access': 'read', 'data': x},
    'output': {'access': 'write', 'expected': expected},
}
try:
    outputs, report = run_m_axi(ol, verified_ip_name, buffers, contract, timeout_s=3)
except TransferFailure as exc:
    print(save_report(exc.report))
    raise
print(save_report(report))
```

`ol` 必须是已核对并加载的本板 Overlay；函数不下载位流。只用一套进程管理该 IP：读取 done 可能清除它，旁观进程轮询同一寄存器也会破坏完成检测。

输入和输出不同长度时，各自提供正确数组。`readwrite` 同时提供 `data` 和 `expected`，要求两者 shape/dtype 一致；这适用于一个缓冲区在算法内部原地更新。不同命名缓冲区会分配不同存储，不自动保留 Python 数组之间的别名关系。

标量以32位无符号寄存器字写入。负数、浮点或64位标量先按硬件ABI编码，再逐字列出。根据算法定义填写n的单位和值，并核对分配容量。

## 生命周期与异常

1. 检查契约、数组和参考；构造 MMIO，不调用可能自启的自定义驱动。
2. 确认 idle、start清除且 auto_restart关闭；分配缓冲区，写输入并 flush。
3. 写指针与标量，最后 start；输出缓冲区预填与参考不同的哨兵值，降低未写输出被误判通过的可能。
4. 有界轮询，记住可能读清除的 done，直到同时确认曾完成且已经 idle。
5. invalidate输出、复制并比对，最后释放已停止使用的缓冲区。
6. 启动后的超时、MMIO异常或中断会保留所有缓冲区及 MMIO 到 `QUARANTINE`，阻止下一次调用。没有通用 master reset 寄存器，因此不猜地址、不用 DMA reset 冒充恢复。

隔离后保持内核、进程和缓冲区，通过硬件复位或整板重启确认master停止，再重新开始会话。释放缓冲区的前提是硬件已停止访问它；关闭Python进程只会结束软件等待。

master用完成状态判断执行结束，用参考比对判断数值正确。若还需验证实际写回范围，应在设计中加入计数器或用ILA观察；readwrite缓冲区里的不变元素按算法语义验收。

`call_wall_ms` 从发出 start 前计到输出同步、复制和比较之后；不含分配、参数准备和位流加载。轮询超时不覆盖 MMIO 总线访问本身挂起，也不覆盖 Linux 驱动阻塞。

## MRI 接入边界

MRI V5使用多指针、权重重排和固定预留DDR运行时。接入时先核对每个指针的范围、别名和工作区布局，再选择保留既有C++运行时或编写专属绑定。本适配器使用allocate管理的设备地址；固定预留区由原运行时管理。详见 [Linux／Qt扩展](linux-qt-deployment.md)。
