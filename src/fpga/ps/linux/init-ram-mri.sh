#!/bin/sh
export PATH=/sbin:/bin:/usr/sbin:/usr/bin
mkdir -p /proc /sys /dev /run
mount -t proc proc /proc
mount -t sysfs sysfs /sys
mount -t devtmpfs devtmpfs /dev
mkdir -p /dev/pts
echo 'MRI Linux RAM root. Task storage requires a separately mounted data filesystem.' >/dev/console
exec /sbin/init
