param([string]$Vitis = 'E:\Xilinx\Vitis\2020.2', [string]$OutputFolder = 'build/app')
$ErrorActionPreference = 'Stop'
$PlatformRoot = [IO.Path]::GetFullPath((Join-Path $PSScriptRoot '../../vivado'))
$gcc = Join-Path $Vitis 'gnu/aarch32/nt/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++.exe'
$includes = Join-Path $PlatformRoot 'build/qt_headers/usr/include/arm-linux-gnueabihf/qt5'
$libs = Join-Path $PlatformRoot 'build/target_libs'
$output = Join-Path $PlatformRoot $OutputFolder
New-Item -ItemType Directory -Path $output -Force | Out-Null
$argsList = @('-std=c++11', '-O2', '-fPIC', '-mcpu=cortex-a9', '-mfpu=neon', '-mfloat-abi=hard',
    '-Wall', '-Wextra', '-Wno-deprecated-copy', '-DQT_NO_KEYWORDS', '-DQT_NO_DEBUG', "-I$includes",
    "-I$includes/QtCore", "-I$includes/QtGui", "-I$includes/QtWidgets",
    (Join-Path $PlatformRoot '../ps/ui/main.cpp'), '-o', (Join-Path $output 'demo2'),
    "-Wl,-rpath-link,$libs", '-Wl,--allow-shlib-undefined',
    "$libs/libQt5Widgets.so.5", "$libs/libQt5Gui.so.5", "$libs/libQt5Core.so.5", '-lpthread')
& $gcc @argsList 2>&1 | Tee-Object -FilePath (Join-Path $output 'compile.log')
if ($LASTEXITCODE -ne 0) { throw 'Qt ARM compilation failed' }
Copy-Item -LiteralPath (Join-Path $PlatformRoot '../ps/service/network_backend.py') -Destination $output
Copy-Item -LiteralPath (Join-Path $PlatformRoot '../ps/service/board_sensors.py') -Destination $output
Write-Host "ARM application: $output/demo2"
