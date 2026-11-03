#!/bin/sh
set -eu
cd /opt/mri/bin
test -e /dev/fb0 || { echo 'MRI UI requires /dev/fb0' >&2; exit 1; }
export QT_QPA_PLATFORM=linuxfb:fb=/dev/fb0
export QT_PLUGIN_PATH=/usr/lib/plugins
export QT_QPA_FONTDIR=/usr/share/fonts
export QT_QUICK_BACKEND=software
export QT_QPA_FB_NO_LIBINPUT=1
export MRI_STATUS="${MRI_TASK_ROOT:-/mnt/mri-data/tasks}/current.json"
exec /opt/mri/bin/mri_ui "$@"
