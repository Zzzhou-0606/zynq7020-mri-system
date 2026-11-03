#!/bin/sh
set -eu
cd /opt/demo2
if [ ! -e /dev/fb0 ]; then
    echo 'Missing /dev/fb0: inspect dmesg and the DRM LCD driver before starting Qt.' >&2
    exit 1
fi
export QT_QPA_PLATFORM=linuxfb:fb=/dev/fb0
export QT_PLUGIN_PATH=/usr/lib/plugins
export QT_QPA_FONTDIR=/usr/share/fonts
export QT_QUICK_BACKEND=software
# Qt linuxfb discovers evdev input automatically. Do not hardcode event0:
# USB keyboard/mouse enumeration can change event numbering.
export QT_QPA_FB_NO_LIBINPUT=1
echo 'Input devices available to Qt:'
cat /proc/bus/input/devices || true
exec ./demo2 "$@"
