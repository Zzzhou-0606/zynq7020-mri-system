echo "Demo2: minimal LCD PL + PS Ethernet"
setenv bootargs 'console=ttyPS0,115200 cma=50M earlycon rdinit=/init'
if fatload mmc 0:1 0x02000000 zImage; then
    if fatload mmc 0:1 0x01000000 system.dtb; then
        if fatload mmc 0:1 0x10000000 rootfs-demo2.cpio.gz; then
            setenv demo2_rdsize ${filesize}
            bootz 0x02000000 0x10000000:${demo2_rdsize} 0x01000000
        fi
    fi
fi
echo "Demo2 boot failed; check SD FAT partition and serial log"
