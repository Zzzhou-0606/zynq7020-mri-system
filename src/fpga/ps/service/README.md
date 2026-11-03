# 板端 MRI 任务服务



患者入口版本：所有生产 `/v1/*` 接口要求医生配对凭据，浏览器患者使用 `/patient/` 和病人ID＋独立访问码。新增模块 `patient_portal.py`、静态目录 `patient_web/`；运行包及操作见[板端部署](../../../../board/README.md)。医生Qt本地状态读取不受HTTP认证影响。

`mri_service.py` 使用 Python 3.7+ 标准库，默认绑定 `0.0.0.0:8080`。输入、状态、预览、日志与结果按任务 UUID 分目录；只允许一个推理任务执行。网络配置仍由 `network_backend.py` 处理。

```sh
python3 /opt/mri/service/mri_service.py --root /mnt/mri-data/tasks --storage-mount /mnt/mri-data \
  --runtime /opt/mri/bin/mri_infer --model /opt/mri/models/model.bin --backend pl
```

默认要求任务目录位于已挂载的数据分区，避免将 512 MiB 保留任务写进 1 GiB 板卡的 RAM 根文件系统。桌面协议测试可显式加 `--allow-unmounted-store --bind 127.0.0.1`，并选择 `--backend cpu`；CPU 结果标记 `ps_cpu_reference`，不会自动替代 PL。

PL 运行时维护 `/run/mri-pl-state` 的持久忙锁。超时或进程中断可能使硬件继续访问 DDR；服务只读该状态，忙锁未释放时拒绝新 PL 任务并提示重启开发板，不能通过重启 HTTP 服务或删除锁文件绕过。`health.pl` 提供锁定和恢复要求；实际寄存器空闲检查由运行时执行。服务关闭会阻止待启动线程再创建进程，并终止已有推理子进程，但进程终止本身不等于 PL 已停止。

| 方法和路径 | 内容 |
|---|---|
| `GET /v1/health` | 模型版本、配置的后端、当前执行任务与输入大小上限；不是硬件自检 |
| `POST /v1/tasks` | `task_id`、`case_id`、`scan_id`、`model_version` |
| `PUT /v1/tasks/{id}/input` | `shared/protocol/mri_v1.py` 定义的完整 MRIRAW1 二进制，固定 10,731,552 字节 |
| `POST /v1/tasks/{id}/start` | 提交执行；忙时返回 409，队列保留电脑端 |
| `GET /v1/tasks/{id}` | 分类／分割独立状态、进度和当前任务的预览路径 |
| `GET /v1/tasks/{id}/result` | 直接返回模型结果及病例／扫描／任务身份 |
| `PUT /v1/tasks/{id}/preview/{0,1,2}` | PNG，不超过 2 MiB、1600×1200；更新保留旧版本 |
| `PUT /v1/tasks/{id}/segmentation` | `pending/running/complete/failed` 及详情，终态禁止变回运行中 |

一级完整而二级失败时返回 `severity_status=incomplete`、`class_id=null`，保留一级概率和提示分。Qt 明确显示二级未完成。全流程异常不会生成阴性结果。进度百分比按 131 个切片任务累计，不能当成剩余时间估计。

上传采用临时文件与原子发布。重复输入必须逐字节相同；改变输入需要新任务。任务、历史预览和失败上传残留不会自动删除，超过存储预算返回 507。重启将原先运行中的任务标记失败，避免继续显示已中断的进度。

扫描删除、配对及患者访问接口见 [通信协议](../../../../report/reference/protocol.md)。
