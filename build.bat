call vars.cmd

SET "PATH=%minGW%;%gcc%;%qemu%;%PATH%"

i686-elf-as ExampleOS/boot.s -o build/boot.o
i686-elf-gcc -c ExampleOS/kernel.c -o build/kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

cd build
i686-elf-gcc -T linker.ld -o ../bin/boot/exampleos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
cd ..

@REM If you can get grub-mkrescue:

REM grub-mkrescue -o iso/exampleos.iso bin
REM qemu-system-i386 -cdrom iso/exampleos.iso

@REM Else, boot directly:

qemu-system-i386 -kernel bin/boot/exampleos.bin

pause
