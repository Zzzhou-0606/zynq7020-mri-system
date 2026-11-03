param([string]$Python='python', [string]$Environment='F:\mri_source_env', [ValidateSet('cpu','cu126')][string]$Torch='cpu')
$ErrorActionPreference='Stop'
$version=& $Python -c "import sys,struct; print(str(sys.version_info.major)+'.'+str(sys.version_info.minor)+':'+str(sys.maxsize.bit_length()+1))"
if($LASTEXITCODE -ne 0 -or $version -ne '3.12:64'){throw 'Use CPython 3.12 x64 (release baseline: 3.12.6)'}
if(Test-Path -LiteralPath $Environment){throw 'Choose a new virtual environment directory'}
& $Python -m venv $Environment
if($LASTEXITCODE -ne 0){throw 'Virtual environment creation failed'}
$pythonExe=Join-Path $Environment 'Scripts/python.exe'
# Isolate pip from a system-wide TLS keylog path that may not be writable.
$savedSslKeyLog=$env:SSLKEYLOGFILE
$env:SSLKEYLOGFILE=$null
try {
& $pythonExe -m pip install torch==2.8.0 torchvision==0.23.0 --index-url ('https://download.pytorch.org/whl/'+$Torch)
if($LASTEXITCODE -ne 0){throw 'PyTorch installation failed'}
& $pythonExe -m pip install -r (Join-Path $PSScriptRoot 'requirements.txt')
if($LASTEXITCODE -ne 0){throw 'Source dependency installation failed'}
} finally {$env:SSLKEYLOGFILE=$savedSslKeyLog}
Write-Host "Source interpreter: $pythonExe"
