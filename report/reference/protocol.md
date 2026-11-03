# MRI 演示系统协议 v1

模型版本 `system-frozen-20261022-v1`。

## 数据与执行边界

电脑确认 OASIS T88 原有磁盘网格后执行固定空间采样，提交未归一化的 A/B/C 切面及掩膜。PS 负责会话 p1/p99 统计、固定 scale 的 int16 编码、整数归一化以及 B/C 的 224×224 插值和 ImageNet 标准化。当前完整网络的 PS/PL 分工与加速器 ABI 6 见 [当前性能与实现说明](../current_performance.md)；通信格式不随计算调度改变。

原生空间分割在电脑执行，上传到板端的是带颜色叠加的 PNG。它不改变分类张量，也不假定原生空间与 T88 对齐。

## 原始张量 `MRIRAW1`

小端字节序。32 字节文件头为 Python `struct.Struct('<8s6I')`：

| 字段 | 值 |
|---|---|
| magic | `MRIRAW1` 后接一个 NUL，共 8 字节 |
| version | uint32，1 |
| a_count / b_count / c_count | uint32，34 / 38 / 59 |
| height / width | uint32，128 / 128 |

文件头之后依次为 A 图像 float32 NHW、A 掩膜 uint8 NHW、B 图像、B 掩膜、C 图像、C 掩膜。图像必须有限，掩膜只能为 0 或 1，每张切片掩膜非空。总长度必须为 **10,731,552 字节**，不允许额外尾部。`mri_v1.py` 是电脑序列化与板端标准库验证入口。

## HTTP 资源

板端服务使用 HTTP；用于可信的演示局域网，不含TLS终止。除本地触屏生成的一次性配对码兑换 `POST /v1/pair` 外，生产服务所有 `/v1/*` 接口要求 `Authorization: Bearer <doctor.key>`；患者cookie不能调用此接口。首次在医生WebUI配对，原数据格式与模型契约不变。患者只读路径 `/patient/` 及发布、撤销、三轴影像接口见 [板端部署](../../board/README.md)。

| 方法与路径 | 作用 |
|---|---|
| GET `/v1/health` | 查询模型版本、执行后端与服务状态 |
| POST `/v1/tasks` | JSON 提交 task_id(UUID)、case_id、scan_id、model_version |
| DELETE `/v1/scans/{scan_id}` | 医生鉴权；JSON case_id；删除该扫描全部任务/影像/发布，返回deleted、scan_id、case_id、case_empty |
| PUT `/v1/tasks/{id}/input` | 上传 MRIRAW1 二进制；先完整验证再允许执行 |
| POST `/v1/tasks/{id}/start` | 启动串行分类任务；重复查询/请求不重复运行 |
| GET `/v1/tasks/{id}` | 获取当前任务及分类/分割独立状态 |
| GET `/v1/tasks/{id}/result` | 获取该任务已完成的分类结果 |
| PUT `/v1/tasks/{id}/preview/{0,1,2}` | 上传该任务关键切面 PNG |
| PUT `/v1/tasks/{id}/segmentation` | 上传电脑分割状态；须区分实时运行与加载缓存 |

任务、扫描、病例分别标识。状态持久化，重连使用已有 task_id 查询。任务图像和结果绑定任务，切换病例时不得沿用上一病例的数据。服务拒绝冲突版本、非法路径/标识、无长度或超限载荷；已有有效输入不静默覆盖。运行期只允许一个分类任务，电脑负责排队；超时、失败和存储配额耗尽都要显式呈现。

## 分类结果

`probabilities_abc` 为三个分支阳性概率，`probability_positive` 是 0.427/0.300/0.273 加权值；`score=100*probability_positive`。`prediction` 为一级阈值 0.5 的结果。

一级阴性：`class_id=0`、`severity_status="not_applicable"`、`severity_probability=null`。一级阳性：复用 B/C 原始均值特征，二级成功时 `severity_status="complete"`；二级概率 <0.5 对应 class_id=1，否则 class_id=2。二级失败时保留已完成的一级分数，使用 `severity_status="incomplete"`、`class_id=null`、`severity_probability=null` 和非空 `severity_error`，界面显示二级未完成。服务此时可完成任务并返回部分结果，但不能将 null 当作类别 0。`classification_complete=false` 明确表示最终分类未完成。分类错误不能填充成正常类别或零分。

`execution_backend` 必须如实为 `pl`、`ps_cpu_reference` 或电脑独立参考的 `software_reference`。PL 设备初始化或运行失败必须报告失败，不自动回退到 CPU 后标成 FPGA 推理。合成测试后端仅可用于测试，不能作硬件证据。

## 部署模型

当前交付使用 INT16 部署模型，格式标识为 `MRIMQV2`。冻结输入权重与量化范围见 [模型输入](../../data/models/README.md)，训练和导出入口见 [模型源码](../../src/model/README.md)。成品位于 `build/release/model/`（相对交付根目录），由根文件系统打包流程装载。模型文件格式版本与加速器 ABI 分别管理，必须与运行时匹配。

## 外设版增量接口（2026-10-24）

- `POST /v1/pair`：`{pairing_code:"六位数字字符串"}`，成功返回doctor_token；配对码仅板端触屏生成，300秒、单次、全局最多5次错误。
- `POST /v1/time`：医生鉴权，`{unix_time:UTC秒}`；系统校时成功返回synced及rtc_updated。RTC失败不抹去系统校时成功，但带rtc_error。上位机主动连接/配对后调用一次。
- `GET /v1/tasks/{id}/patient-images`：医生鉴权，返回exists与shape；完整影像已存在时更新访问码可跳过打包上传。
- 患者新码为随机六位字符串，保留前导零；旧长患者码在轮换前仍兼容。先发码后同步图像，后续图像失败不撤销成功发布。
- 服务提交到结果耗时使用进程内monotonic计时；跨服务重启无法恢复时返回null，submit_clock为unavailable_after_restart。

RTC、蜂鸣器和本地 U 盘导出见 [外设说明](board_peripherals.md)。

## 显式扫描删除（2026-10-24）

删除要求病例匹配且无该扫描分类/分割/上传运行中。其他扫描及其凭据保留；最后扫描删除清除病例凭据/会话。全部目标处理成功才返回deleted:true。case_empty是本次操作的本板快照，不协调多电脑编号。

持久化pending标记使失败可重试，期间禁止该病例新建；旧scan_id/task_id永久不可复活。尚不存在扫描也保存标记阻止延迟创建。健康接口提供scan_deletion.supported。失败请求可重试；持续失败时检查存储可写性和剩余空间。
