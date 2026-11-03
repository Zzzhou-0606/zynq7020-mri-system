param([ValidateSet(150,125,120,110,100)][int]$ClockMHz=125)
$ErrorActionPreference='Continue'
Set-Location $PSScriptRoot
& ($env:MRI_XILINX+'\Vitis\2020.2\gnu\aarch32\nt\gcc-arm-linux-gnueabi\bin\arm-linux-gnueabihf-g++.exe') -std=c++11 -O3 -pthread -mcpu=cortex-a9 -mfpu=neon -mfloat-abi=hard "-DMRI_TARGET_CLOCK_MHZ=$ClockMHz" -o board/mri_infer_full src/fpga/ps/drivers/mri_infer_full.cpp *> logs/arm_compile.log
if($LASTEXITCODE -ne 0){throw 'Integrated ARM runtime compile failed; inspect logs/arm_compile.log'}
'FULL_RUNTIME_READY'

& ($env:MRI_XILINX+'\Vitis\2020.2\gnu\aarch32\nt\gcc-arm-linux-gnueabi\bin\arm-linux-gnueabihf-g++.exe') -std=c++11 -O3 -mcpu=cortex-a9 -mfpu=neon -mfloat-abi=hard -o board/mri_validate_input src/fpga/ps/drivers/mri_validate_input.cpp *> logs/validator_compile.log
if($LASTEXITCODE -ne 0){throw 'Compiled validator build failed'}
