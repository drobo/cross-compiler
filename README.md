# cross-compiler ![](https://travis-ci.org/droboports/cross-compiler.svg?branch=master)

These scripts will build a cross-compiler toolchain for the Drobo ARM devices which will be 32 or 64-bit based on the build machine.

A 32-bit build machine will result in a toolchain with the prefix `arm-droboi686-linux-gnueabi`.

A 64-bit build machine will result in a toolchain with the prefix `arm-drobox86_64-linux-gnueabi`.

DroboApp scripts can abstract the build machine platform by using `arm-drobo$(uname -m)-linux-gnueabi`.

The cross-compiler default install location is `/home/drobo/xtools/toolchain/arm-drobo$(uname -m)-linux-gnueabi`.

Please look at the [releases page](https://github.com/droboports/cross-compiler/releases) for ready-to-use downloads.

## Preparations

- Install Ubuntu 14.04 LTS 32 or 64-bit
- Install the package `build-essential`

## References

- http://preshing.com/20141119/how-to-build-a-gcc-cross-compiler/
- http://wiki.osdev.org/GCC_Cross-Compiler
- http://wiki.osdev.org/Cross-Compiler_Successful_Builds
- http://www.clfs.org/view/CLFS-3.0.0-SYSVINIT/mips/
