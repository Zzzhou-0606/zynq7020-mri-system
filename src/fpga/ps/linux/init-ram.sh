#!/bin/sh
# Initramfs root: all filesystem changes are volatile, SD is not mounted writable.
export PATH=/sbin:/bin:/usr/sbin:/usr/bin
mkdir -p /proc /sys /dev /run
mount -t proc proc /proc
mount -t sysfs sysfs /sys
mount -t devtmpfs devtmpfs /dev
mkdir -p /dev/pts
echo 'Demo2 Linux RAM root: changes disappear on power-off.' >/dev/console
exec /sbin/init
