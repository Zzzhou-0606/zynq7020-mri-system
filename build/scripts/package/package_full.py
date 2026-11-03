"""Replace the runtime in the known working initramfs; preserve all other entries."""
from pathlib import Path
import gzip,json,shutil,subprocess,time,os
r=Path(__file__).resolve().parent; workspace=r
boot=r/'board/boot'
if (boot/'bundle_manifest.json').exists():raise RuntimeError('Preserve already published boot package')
boot.mkdir(exist_ok=True)
base=r/'build/dependencies/base_boot'
accept=dict(line.split('=',1) for line in (r/'results/bitstream_acceptance.txt').read_text().splitlines() if '=' in line)
mhz=int(accept['clock_mhz'])
metadata=dict(system_variant='mri_full_overlap',runtime_variant='overlap-v1',accelerator_abi=6,model_container_abi=2,precision='int16',target_clock_mhz=mhz,expected_hardware_id='0x46554c4c',control_base='0x43c50000',identity_base='0x43c60000',quantization_version='frozen-int16-20261024-v2',board_validation='pending')
(r/'board/runtime_build.json').write_text(json.dumps(metadata,indent=2))
replacements={'opt/mri/bin/network_backend.py':(r/'src/fpga/ps/service/network_backend.py').read_bytes(),'opt/mri/bin/mri_ui':(r/'board/demo2').read_bytes(),'opt/mri/bin/mri_infer':(r/'board/mri_infer_full').read_bytes(),'opt/mri/build-info.json':json.dumps(metadata,indent=2).encode(),'opt/mri/service/mri_service.py':(r/'src/fpga/ps/service/mri_service.py').read_bytes()}
found=set()
with gzip.open(base/'rootfs-mri.cpio.gz','rb') as source,gzip.open(boot/'rootfs-mri.cpio.gz','wb',compresslevel=1) as target:
 while True:
  header=source.read(110)
  if len(header)!=110 or header[:6]!=b'070701':raise RuntimeError('Invalid source newc header')
  fields=[int(header[6+i*8:14+i*8],16) for i in range(13)]
  name=source.read(fields[11]);source.read(-(110+len(name))%4)
  data=source.read(fields[6]);source.read(-fields[6]%4)
  if len(data)!=fields[6]:raise RuntimeError('Truncated source initramfs')
  key=name.rstrip(b'\0').decode().removeprefix('./')
  if key=='TRAILER!!!':
   extra_name=b'opt/mri/bin/mri_validate_input\0';extra_data=(r/'board/mri_validate_input').read_bytes()
   extra_fields=[0x70000001,0o100755,0,0,1,int(time.time()),len(extra_data),0,0,0,0,len(extra_name),0]
   target.write(b'070701'+''.join('%08x'%x for x in extra_fields).encode()+extra_name)
   target.write(b'\0'*(-(110+len(extra_name))%4));target.write(extra_data);target.write(b'\0'*(-len(extra_data)%4))
  if key in replacements:data=replacements[key];fields[6]=len(data);fields[5]=int(time.time());found.add(key)
  target.write(b'070701'+''.join('%08x'%x for x in fields).encode()+name)
  target.write(b'\0'*(-(110+len(name))%4));target.write(data);target.write(b'\0'*(-len(data)%4))
  if key=='TRAILER!!!':break
if found!=set(replacements):raise RuntimeError('Missing initramfs replacement target: '+str(set(replacements)-found))
for name in ['zImage','system.dtb','boot.scr']:shutil.copy2(base/name,boot/name)
fsbl=r/'build/dependencies/fsbl.elf'
uboot=r/'build/dependencies/u-boot-ps-only.elf'
bif=r/'board/full_boot.bif';bif.write_text('the_ROM_image:\n{\n [bootloader] "'+fsbl.as_posix()+'"\n "'+(r/'board/full.bit').as_posix()+'"\n "'+uboot.as_posix()+'"\n}\n')
subprocess.run([str(Path(os.environ.get('MRI_XILINX','E:/Xilinx'))/'Vitis/2020.2/bin/bootgen.bat'),'-arch','zynq','-image',str(bif),'-o',str(boot/'BOOT.BIN')],check=True)
(boot/'bundle_manifest.json').write_text(json.dumps(metadata,indent=2))
print('FULL_BOOT_PACKAGE_READY',str(boot),flush=True)
