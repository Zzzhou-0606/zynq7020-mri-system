echo "Demo2: root filesystem on SD partition 2"
setenv bootargs 'console=ttyPS0,115200 cma=50M earlycon root=/dev/mmcblk0p2 rw rootwait'
if fatload mmc 0:1 0x02000000 zImage; then
    if fatload mmc 0:1 0x01000000 system.dtb; then
        bootz 0x02000000 - 0x01000000
    fi
fi
