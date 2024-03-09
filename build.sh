rm initramfs_simple
rm init
#arm-linux-gnueabi-gcc -static init.c -o init
arm-linux-gnueabihf-gcc -static init.c -o init
echo init|cpio -o --format=newc > initramfs_simple
