param(
 [Parameter(Mandatory=$true)][string]$Workspace,
 [Parameter(Mandatory=$true)][string]$ReleaseRoot,
 [string]$Python='python',
 [string]$Xilinx='E:\Xilinx',
 [ValidateSet(125,150)][int]$ClockMHz=125,
 [switch]$UsePrebuiltHardware
)
$ErrorActionPreference='Stop'
$delivery=[IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../..'))
$Workspace=[IO.Path]::GetFullPath($Workspace);$ReleaseRoot=[IO.Path]::GetFullPath($ReleaseRoot)
foreach($path in @($Workspace,$ReleaseRoot)){
 if(Test-Path -LiteralPath $path){throw "Choose a new output directory: $path"}
 if($path -eq $delivery -or $path.StartsWith($delivery+'\',[StringComparison]::OrdinalIgnoreCase)){throw 'Build outside the final delivery'}
}
if($Workspace -eq $ReleaseRoot -or $ReleaseRoot.StartsWith($Workspace+'\',[StringComparison]::OrdinalIgnoreCase) -or $Workspace.StartsWith($ReleaseRoot+'\',[StringComparison]::OrdinalIgnoreCase)){throw 'Workspace and release must be separate'}
if($UsePrebuiltHardware -and $ClockMHz -ne 125){throw 'The validated prebuilt hardware is 125 MHz'}
foreach($tool in @('Vitis/2020.2/gnu/aarch32/nt/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++.exe','Vitis/2020.2/bin/bootgen.bat')){if(!(Test-Path (Join-Path $Xilinx $tool))){throw "Missing tool: $tool"}}
& $Python -B (Join-Path $PSScriptRoot 'prepare_workspace.py') --output $Workspace
if($LASTEXITCODE -ne 0){throw 'Workspace preparation failed'}
$env:MRI_XILINX=$Xilinx
Push-Location $Workspace
try {
 if($UsePrebuiltHardware){
  foreach($pair in @(@('system_wrapper.bit','full.bit'),@('full.hwh','full.hwh'),@('mri_full_overlap.xsa','mri_full_overlap.xsa'))){Copy-Item -LiteralPath (Join-Path $delivery ('build/release/fpga/'+$pair[0])) -Destination (Join-Path $Workspace ('board/'+$pair[1]))}
  Copy-Item -LiteralPath (Join-Path $delivery 'report/fpga/bitstream_acceptance.txt') -Destination (Join-Path $Workspace 'results/bitstream_acceptance.txt')
  $mhz=125
 } else {
  & powershell -NoProfile -ExecutionPolicy Bypass -File Build-Hls.ps1
  if($LASTEXITCODE -ne 0){throw 'HLS failed'}
  $clocks=if($ClockMHz -eq 150){@(150,125)}else{@(125)};$accepted=$false
  foreach($mhz in $clocks){
   $target=Join-Path $Workspace "build/vivado_${mhz}_r5";New-Item -ItemType Directory -Path $target | Out-Null
   foreach($name in @('d2.xpr','d2.srcs','ip_repo','rtl','constraints')){Copy-Item -LiteralPath (Join-Path $Workspace "build/dependencies/vivado_seed/$name") -Destination $target -Recurse}
   New-Item -ItemType Directory -Path (Join-Path $target 'ip_cache') | Out-Null
   & (Join-Path $Xilinx 'Vivado/2020.2/bin/vivado.bat') -mode batch -source build_vivado.tcl -notrace -log "logs/vivado_$mhz.log" -journal "logs/vivado_$mhz.jou" -tclargs (Join-Path $target 'd2.xpr') $mhz *> "logs/vivado_${mhz}_console.log"
   if($LASTEXITCODE -eq 0){$accepted=$true;break}
   if(!(Select-String -Path "logs/vivado_${mhz}_console.log" -Pattern 'TIMING_REJECTED' -Quiet)){throw 'Vivado failed; inspect log'}
  }
  if(!$accepted){throw 'No accepted clock'}
  & powershell -NoProfile -ExecutionPolicy Bypass -File Build-Fsbl.ps1 -Xilinx $Xilinx
  if($LASTEXITCODE -ne 0){throw 'FSBL generation failed'}
 }
 & powershell -NoProfile -ExecutionPolicy Bypass -File Build-Runtime.ps1 -ClockMHz $mhz
 if($LASTEXITCODE -ne 0){throw 'Runtime compilation failed'}
 & powershell -NoProfile -ExecutionPolicy Bypass -File Build-Qt.ps1 -Xilinx $Xilinx
 if($LASTEXITCODE -ne 0){throw 'Qt compilation failed'}
 & powershell -NoProfile -ExecutionPolicy Bypass -File Finalize-Bit.ps1
 if($LASTEXITCODE -ne 0){throw 'Bitstream conversion failed'}
 & $Python -B package_full.py
 if($LASTEXITCODE -ne 0){throw 'Boot packaging failed'}
 foreach($folder in @('board/boot','board/runtime','fpga','model')){New-Item -ItemType Directory -Path (Join-Path $ReleaseRoot $folder) -Force | Out-Null}
 Copy-Item -Path (Join-Path $Workspace 'board/boot/*') -Destination (Join-Path $ReleaseRoot 'board/boot')
 foreach($pair in @(@('mri_infer_full','mri_infer'),@('mri_validate_input','mri_validate_input'),@('runtime_build.json','runtime_build.json'),@('demo2','demo2'))){Copy-Item -LiteralPath (Join-Path $Workspace ('board/'+$pair[0])) -Destination (Join-Path $ReleaseRoot ('board/runtime/'+$pair[1]))}
 foreach($pair in @(@('full.bit','system_wrapper.bit'),@('full.bit.bin','full.bit.bin'),@('full.hwh','full.hwh'),@('mri_full_overlap.xsa','mri_full_overlap.xsa'))){Copy-Item -LiteralPath (Join-Path $Workspace ('board/'+$pair[0])) -Destination (Join-Path $ReleaseRoot ('fpga/'+$pair[1]))}
 Copy-Item -LiteralPath (Join-Path $Workspace 'build/dependencies/fsbl.elf') -Destination (Join-Path $ReleaseRoot 'fpga/fsbl.elf')
 $ip=if($UsePrebuiltHardware){Join-Path $delivery 'build/release/fpga/mri_full_ip.zip'}else{Join-Path $Workspace 'build/hls_full_r5/solution1/impl/ip/mri_test_hls_mri_full_1_0.zip'}
 Copy-Item -LiteralPath $ip -Destination (Join-Path $ReleaseRoot 'fpga/mri_full_ip.zip')
 Copy-Item -Path (Join-Path $Workspace 'data/*') -Destination (Join-Path $ReleaseRoot 'model')
 Write-Host "MRI_RELEASE_READY=$ReleaseRoot"
} finally {Pop-Location}
