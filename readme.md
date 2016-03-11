
Getting started with OS development on Windows
===============================================

You will need
--------------

- MinGW
	- Download and install http://www.mingw.org/download/installer
	- Usually installs in `C:\MinGW\`
	- You will need to link the `C:\MinGW\bin` directory
- i686-elf targeting GCC
	- Download and extract https://drive.google.com/file/d/0B85K_c7mx3QjUnZuaFRPWlBIcXM/edit?usp=sharing
	- If this link goes dead, try finding another at http://wiki.osdev.org/GCC_Cross-Compiler#Prebuilt_Toolchains
	- If there's none to be found, you will need to build your own [GCC cross-compiler](http://wiki.osdev.org/GCC_Cross-Compiler)
	- In this example, I've extracted it to `C:\software\ghost-i686-elf-tools`
	- You will need to link the `C:\software\ghost-i686-elf-tools\bin` directory
- QEMU
	- Download and install the latest exe at http://qemu.weilnetz.de/w64/
	- Usually installs in `C:\Program Files\qemu`


The OS code itself
-------------------

The code is copied verbatim from the [OSdev.org Bare bones tutorial](http://wiki.osdev.org/Bare_bones)


Building and running the OS
----------------------------

1. Make sure you've installed MinGW, QEMU, and have a i686-elf targeting GCC
2. Edit `vars.cmd` to match where you've installed or extracted dependencies.
	- set the `minGW` variable to the MinGW bin directory: `SET "minGW=C:\MinGW\bin"`
	- set the `gcc` variable to the GCC bin directory: `SET "gcc=C:\software\ghost-i686-elf-tools\bin"`
	- set the `qemu` variable to the MinGW bin directory: `SET "qemu=C:\Program Files\qemu"`
3. Run `build.bat` to build the OS and run it in QEMU
	- Run `run.bat` to just run the compiled code in QEMU
