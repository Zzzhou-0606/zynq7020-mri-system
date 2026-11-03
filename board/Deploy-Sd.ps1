param(
 [Parameter(Mandatory=$true)][string]$BoardIP,
 [string]$User='root',
 [string]$BootDirectory='',
 [string]$SdMount='/media/sd-mmcblk0p1'
)
$ErrorActionPreference='Stop'
if($BoardIP -notmatch '^[A-Za-z0-9.-]+$' -or $User -notmatch '^[A-Za-z0-9_-]+$' -or $SdMount -notmatch '^/[A-Za-z0-9_./-]+$'){throw 'Invalid address/user/mount'}
if(!$BootDirectory){$BootDirectory=Join-Path $PSScriptRoot '../build/release/board/boot'}
$BootDirectory=(Resolve-Path -LiteralPath $BootDirectory).Path
$remote='/tmp/mri-deploy-'+(Get-Date -Format 'yyyyMMddHHmmss')
$target=$User+'@'+$BoardIP
& ssh $target "mkdir '$remote'"
if($LASTEXITCODE -ne 0){throw 'SSH staging failed'}
Push-Location $BootDirectory
try {& scp -O BOOT.BIN boot.scr zImage system.dtb rootfs-mri.cpio.gz bundle_manifest.json ($target+':'+$remote+'/')} finally {Pop-Location}
if($LASTEXITCODE -ne 0){throw 'Boot upload failed'}
Push-Location $PSScriptRoot
try {& scp -O install_sd.py ($target+':'+$remote+'/')} finally {Pop-Location}
if($LASTEXITCODE -ne 0){throw 'Installer upload failed'}
& ssh $target "python3 '$remote/install_sd.py' --source '$remote' --sd '$SdMount' --reboot"
# SSH may disconnect when the authorized reboot begins. Verify through the service afterwards.
