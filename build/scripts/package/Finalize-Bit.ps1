$ErrorActionPreference='Stop'
Set-Location (Join-Path $PSScriptRoot 'board')
$values=@{}
Get-Content (Join-Path $PSScriptRoot 'results/bitstream_acceptance.txt') | ForEach-Object {
 $parts=$_ -split '=',2
 if($parts.Count -eq 2){$values[$parts[0]]=$parts[1]}
}
if([double]$values.setup_slack_ns -lt 0 -or [double]$values.hold_slack_ns -lt 0){throw 'Timing failed'}
if(!(Test-Path full.bit)){throw 'Missing bitstream'}
if(Test-Path full.bit.bin){throw 'Preserve existing converted bitstream; use a new workspace'}
& ($env:MRI_XILINX+'\Vitis\2020.2\bin\bootgen.bat') -image candidate.bif -arch zynq -process_bitstream bin
if($LASTEXITCODE -ne 0){throw 'Bootgen failed'}
if(!(Test-Path full.bit.bin)){throw 'Missing FPGA manager binary'}
$values.clock_mhz=[int]$values.clock_mhz
[IO.File]::WriteAllText((Join-Path $PWD 'accepted.json'),($values | ConvertTo-Json),[Text.UTF8Encoding]::new($false))
'FPGA_MANAGER_BINARY_READY'
