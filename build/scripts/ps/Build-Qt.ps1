param([string]$Xilinx='E:\Xilinx')
$ErrorActionPreference='Stop'
$root=$PSScriptRoot
$gcc=Join-Path $Xilinx 'Vitis/2020.2/gnu/aarch32/nt/gcc-arm-linux-gnueabi/bin/arm-linux-gnueabihf-g++.exe'
$includes=Join-Path $root 'build/dependencies/qt_headers/usr/include/arm-linux-gnueabihf/qt5'
$libs=Join-Path $root 'build/dependencies/target_libs'
$arguments=@('-std=c++11','-O2','-fPIC','-mcpu=cortex-a9','-mfpu=neon','-mfloat-abi=hard','-Wall','-Wextra','-Wno-deprecated-copy','-DQT_NO_KEYWORDS','-DQT_NO_DEBUG',"-I$includes","-I$includes/QtCore","-I$includes/QtGui","-I$includes/QtWidgets",(Join-Path $root 'src/fpga/ps/ui/main.cpp'),'-o',(Join-Path $root 'board/demo2'),"-Wl,-rpath-link,$libs",'-Wl,--allow-shlib-undefined',"$libs/libQt5Widgets.so.5","$libs/libQt5Gui.so.5","$libs/libQt5Core.so.5",'-lpthread')
& $gcc @arguments *> (Join-Path $root 'logs/qt_compile.log')
if($LASTEXITCODE -ne 0){throw 'Qt ARM compilation failed'}
