rm ramdisk-new.cpio
rm boot.img
./mkbootfs ./ramdisk > ramdisk-new.cpio
./mkbootimg --base "00200000" --kernel zImage --ramdisk ramdisk-new.cpio -o boot.img
