# 上板部署与运行

成品在[build/release/board/boot](../build/release/board/boot/)。断电后将BOOT.BIN、boot.scr、zImage、system.dtb、rootfs-mri.cpio.gz成套复制到SD启动分区根目录；保留数据分区，不格式化。
当前系统125MHz、overlap-v1、加速器ABI6/0x46554c4c，完整启动包已含推理程序、校验器、模型、服务与UI。
不能与旧ABI5启动文件混用。使用板卡现场实际IP，原医生/患者HTTP协议保留。

可使用Windows OpenSSH上传并安装，脚本会在SD保留旧五件套后重启：

```powershell
./board/Deploy-Sd.ps1 -BoardIP 192.168.50.36
```

按SSH提示输入板卡登录信息；不把登录密码写进脚本。该入口默认使用当前release；新生成启动包可传-BootDirectory。
上电和SD启动方式需正确，默认启动分区挂载点/media/sd-mmcblk0p1，可通过-SdMount指定。

运行后通过正式配对接口完成一次完整分类：

```powershell
python -B ./board/run_classification.py --board 192.168.50.36 --input <工作台生成的input.bin> --output F:/mri_board_result_new
```

脚本会提示输入新的一次性配对码，医生授权只保存在当前进程内存中。
输入必须是现有MRIRAW1/131张输入，可由工作台按原流程生成；包内附有五例 OASIS-1 演示影像，以及独立的正式板测输入；医生凭据在运行时配对取得。
正式板测输入为 `data/reference/mri_input.bin`，使用它时传入 `--expected-result sim/mri/reference_result.json`，可与保存结果比较分类字段。正式结果与计时见 [sim/mri](../sim/mri/README.md)，五例影像见 [测试用例](../data/test_cases/oasis1/README.md)。
输出写入指定的新目录，不放入正式交付区。原19.893秒记录和计时边界见[性能说明](../report/current_performance.md)。

当前成品默认检查125MHz；若自行重建并接受150MHz，分类入口使用--clock-mhz 150指定预期时钟。

## 网络配置

当前发布版本已通过上板验证。直连示例：电脑以太网设置 192.168.1.2/24；板端选择 Static IPv4，填写 192.168.1.1、255.255.255.0，网关留空，点击应用并确认。浏览器使用 http://192.168.1.1:8080/ 。静态 IP 只在本次启动有效，重启后恢复 DHCP。
