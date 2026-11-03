"""Prepare an isolated copy of this PYNQ image's headers and build modules."""
from pathlib import Path
import os
import shutil
import subprocess
import zipfile

here=Path(__file__).resolve().parent
release=os.uname().release
if release!='5.4.0-xilinx-v2020.2':
    raise RuntimeError('This prepared-header supplement is for Linux 5.4.0-xilinx-v2020.2')
build=here/'kernel_build'
if not build.exists():
    shutil.copytree(Path('/lib/modules')/release/'build',build,symlinks=True)
generated=build/'arch/arm/include/generated/asm'
generated.mkdir(parents=True,exist_ok=True)
with zipfile.ZipFile(here/'kernel_generated_asm.zip') as archive:
    for name in archive.namelist():
        if Path(name).name!=name or not name.endswith('.h'):
            raise ValueError('Unexpected generated header: '+name)
        (generated/name).write_bytes(archive.read(name))
with (here/'module_rebuild.log').open('w') as log:
    for command in [['make','-C',str(build),'prepare0','-j2'],
                    ['make','-C',str(build),'M='+str(here/'src'),'modules','-j2']]:
        result=subprocess.run(command,stdout=log,stderr=subprocess.STDOUT)
        log.flush()
        if result.returncode:
            raise RuntimeError('Build failed; see '+str(here/'module_rebuild.log'))
print('BUILT',here/'src/skill_dmafb.ko',here/'src/skill_vendor_goodix.ko')
