#!/bin/bash

# This script builds the cross-compiler toolchain.
# Make sure the cross-compiler builder image already exists!

### bash best practices ###
# exit on error code
set -o errexit
# exit on unset variable
set -o nounset
# return error of last failed command in pipe
set -o pipefail
# expand aliases
shopt -s expand_aliases
# print trace
set -o xtrace

export BUILDDIR="$(dirname "$(readlink -f -- "$0")")"
pushd "${BUILDDIR}"
docker run -ti --rm -v $PWD:/home/drobo/build drobo/cross-compiler-builder:20.04 /home/drobo/build/build.sh
_rc=$?
popd
exit ${_rc}
