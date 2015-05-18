fastboot flash partition MBR
if ! fastboot flash UBOOT lk.bin ; then
	fastboot flash lk lk.bin
fi
fastboot flash boot0 preloader.img
fastboot flash TEE1 tz.img 
fastboot flash TEE2 tz.img
fastboot flash boot boot.img
