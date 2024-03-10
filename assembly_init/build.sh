rm init.o
rm init
rm init_assembly

arm-linux-gnueabihf-as -o init.o init.S
arm-linux-gnueabihf-ld -o init init.o
echo init|cpio -o --format=newc > init_assembly
