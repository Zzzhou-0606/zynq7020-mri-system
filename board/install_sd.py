"""Run on the board after transferring this script and the boot files."""
from pathlib import Path
import argparse,json,os,shutil,subprocess,time
FILES=['BOOT.BIN','boot.scr','zImage','system.dtb','rootfs-mri.cpio.gz']
def install(source,sd,reboot):
 source=Path(source).resolve();sd=Path(sd).resolve()
 if not sd.is_mount():raise RuntimeError('SD boot partition is not mounted: '+str(sd))
 meta=json.loads((source/'bundle_manifest.json').read_text())
 if meta.get('accelerator_abi')!=6 or meta.get('runtime_variant')!='overlap-v1':raise RuntimeError('Wrong system bundle')
 for name in FILES:
  if not (source/name).is_file() or not (sd/name).is_file():raise FileNotFoundError(name)
 stamp=time.strftime('%Y%m%d-%H%M%S');stage=sd/('mri-stage-'+stamp);backup=sd/('mri-before-'+stamp)
 stage.mkdir();backup.mkdir()
 for name in FILES:
  shutil.copy2(source/name,stage/name)
  with (stage/name).open('rb') as stream:os.fsync(stream.fileno())
  if (stage/name).stat().st_size!=(source/name).stat().st_size:raise RuntimeError('Incomplete copy: '+name)
 shutil.copy2(source/'bundle_manifest.json',stage/'bundle_manifest.json')
 subprocess.run(['/etc/init.d/mri','stop'],check=True)
 moved=[];installed=[]
 try:
  for name in FILES:
   os.rename(str(sd/name),str(backup/name));moved.append(name)
   os.rename(str(stage/name),str(sd/name));installed.append(name)
 except Exception:
  for name in reversed(installed):os.rename(str(sd/name),str(stage/name))
  for name in reversed(moved):os.rename(str(backup/name),str(sd/name))
  os.sync();subprocess.run(['/etc/init.d/mri','start'],check=False);raise
 os.sync();print('DEPLOYED; old boot retained at '+str(backup),flush=True)
 if reboot:subprocess.run(['reboot'],check=True)
if __name__=='__main__':
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('--source',required=True);p.add_argument('--sd',default='/media/sd-mmcblk0p1');p.add_argument('--reboot',action='store_true');a=p.parse_args();install(a.source,a.sd,a.reboot)
