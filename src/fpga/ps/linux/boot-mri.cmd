echo "MRI system: touch LCD + PS Ethernet + CNN accelerator"
# Avoid tmpfs's half-RAM quota while unpacking the MRI initramfs.
setenv bootargs 'console=ttyPS0,115200 cma=50M earlycon rootfstype=ramfs rdinit=/init'
if fatload mmc 0:1 0x02000000 zImage; then
    if fatload mmc 0:1 0x01000000 system.dtb; then
        if fatload mmc 0:1 0x10000000 rootfs-mri.cpio.gz; then
            setenv mri_rdsize ${filesize}
            bootz 0x02000000 0x10000000:${mri_rdsize} 0x01000000
        fi
    fi
fi
echo "MRI boot failed; inspect the matching SD boot files and serial log"
