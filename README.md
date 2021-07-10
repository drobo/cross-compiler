# cross-compiler ![](https://travis-ci.org/droboports/cross-compiler.svg?branch=master)

These scripts will build a cross-compiler toolchain for the Drobo ARM devices
which will be 32 or 64-bit based on the build machine.

A 32-bit build machine will result in a toolchain with the prefix
`arm-drobo_i686-linux-gnueabihf`.

A 64-bit build machine will result in a toolchain with the prefix
`arm-drobo_x86_64-linux-gnueabihf`.

DroboApp scripts can abstract the build machine platform by using
`arm-drobo_$(uname -m)-linux-gnueabihf`.

The cross-compiler default install location is
`/home/drobo/xtools/toolchain/arm-drobo_$(uname -m)-linux-gnueabihf`.

Please look at the [releases page](https://github.com/drobo/cross-compiler/releases)
for ready-to-use downloads.

## How to build the cross-compiler toolchain

- Have a machine with Docker installed
- Clone this repository locally
- Build the Docker cross-compiler builder container:
  `./docker-build-builder.sh`
- Use the Docker container to build the cross-compiler toolchain:
  `./docker-build.sh`

There will be a file called `arm-drobo_i686-linux-gnueabihf.tar.xz`
or `arm-drobo_x86_64-linux-gnueabihf.tar.xz` in the same folder.

## How to test that the cross-compiler limits.h is ok

Run this command:
`echo -e "#include <limits.h>\n_POSIX_PATH_MAX" | ~/xtools/toolchain/arm-drobo_x86_64-linux-gnueabihf/bin/arm-drobo_x86_64-linux-gnueabihf-gcc - -E -P`

If it worked it will output `256`, if not it will output `_POSIX_PATH_MAX`.

## References

- http://preshing.com/20141119/how-to-build-a-gcc-cross-compiler/
- http://wiki.osdev.org/GCC_Cross-Compiler
- http://wiki.osdev.org/Cross-Compiler_Successful_Builds
- http://www.clfs.org/view/CLFS-3.0.0-SYSVINIT/mips/
