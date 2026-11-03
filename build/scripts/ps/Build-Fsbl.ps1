param([string]$Xilinx='E:\Xilinx',[switch]$ResumeGeneratedSources)
$ErrorActionPreference='Stop'
$root=$PSScriptRoot
$out=Join-Path $root 'build/fsbl_new'
if((Test-Path -LiteralPath $out) -and !$ResumeGeneratedSources){throw 'Preserve existing FSBL build'}
$vitis=Join-Path $Xilinx 'Vitis/2020.2'
if(!$ResumeGeneratedSources){
 $ErrorActionPreference='Continue'
 & (Join-Path $vitis 'bin/xsct.bat') (Join-Path $root 'generate_fsbl.tcl') (Join-Path $root 'board/mri_full_overlap.xsa') $out *> (Join-Path $root 'logs/fsbl_generate.log')
 $generateExit=$LASTEXITCODE
 $ErrorActionPreference='Stop'
 # HLS 2020.2 may generate sources then fail its automatic build on Windows #echo.
 if($generateExit -ne 0 -and !(Select-String -Path (Join-Path $root 'logs/fsbl_generate.log') -Pattern '#echo|OUTS = \*\.o' -Quiet)){throw 'FSBL platform generation failed'}
}
$app=Join-Path $out 'mri_hw/zynq_fsbl'
if(!(Test-Path (Join-Path $app 'Makefile'))){throw 'Generated FSBL application is missing'}
Get-ChildItem -LiteralPath (Join-Path $app 'zynq_fsbl_bsp') -Filter Makefile -Recurse -File | ForEach-Object {
 $text=[IO.File]::ReadAllText($_.FullName)
 if($text.Contains('OUTS = *.o')){$text=$text.Replace('OUTS = *.o','OUTS = $(patsubst %.c,%.o,$(wildcard *.c))').Replace("`tmake clean","`t@echo Preserving generated objects")}
 $text=$text.Replace("`t#echo","`t@echo")
 [IO.File]::WriteAllText($_.FullName,$text,[Text.UTF8Encoding]::new($false))
}
$env:PATH=(Join-Path $vitis 'gnu/aarch32/nt/gcc-arm-none-eabi/bin')+';'+(Join-Path $vitis 'gnuwin/bin')+';'+$env:PATH
$ErrorActionPreference='Continue'
& (Join-Path $vitis 'gnuwin/bin/make.exe') -C (Join-Path $app 'zynq_fsbl_bsp') *> (Join-Path $root 'logs/fsbl_bsp.log')
$bspExit=$LASTEXITCODE
$ErrorActionPreference='Stop'
if($bspExit -ne 0){throw 'FSBL BSP compilation failed'}
$ErrorActionPreference='Continue'
& (Join-Path $vitis 'gnuwin/bin/make.exe') -C $app fsbl.elf *> (Join-Path $root 'logs/fsbl_link.log')
$linkExit=$LASTEXITCODE
$ErrorActionPreference='Stop'
if($linkExit -ne 0){throw 'FSBL link failed'}
Copy-Item -LiteralPath (Join-Path $app 'fsbl.elf') -Destination (Join-Path $root 'build/dependencies/fsbl.elf')
