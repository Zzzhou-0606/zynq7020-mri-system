param([switch]$ResumeAfterCrash)
$ErrorActionPreference='Stop'
Set-Location $PSScriptRoot
& ($env:MRI_XILINX+'\Vitis_HLS\2020.2\bin\vitis_hls.bat') -f build_hls.tcl *> logs/hls_r5.log
$ip=Join-Path $PSScriptRoot 'build/hls_full_r5/solution1/impl/ip'
if(!(Test-Path (Join-Path $ip 'component.xml'))){
 $pack=Join-Path $ip 'run_ippack.tcl'
 if(!(Test-Path $pack)){throw 'HLS failed before IP packaging; inspect logs/hls.log'}
 $content=[IO.File]::ReadAllText($pack)
 if([regex]::Matches($content,'(?m)^set Revision .*').Count -ne 1){throw 'Unexpected packager revision field'}
 $content=$content -replace '(?m)^set Revision .*','set Revision 1'
 [IO.File]::WriteAllText($pack,$content,[Text.UTF8Encoding]::new($false))
 Push-Location $ip
 try {& ($env:MRI_XILINX+'\Vivado\2020.2\bin\vivado.bat') -mode batch -source run_ippack.tcl -notrace *> (Join-Path $PSScriptRoot 'logs/ip_packaging.log')} finally {Pop-Location}
}
if(!(Test-Path (Join-Path $ip 'component.xml'))){throw 'IP packaging failed'}
'HLS_IP_READY='+$ip
