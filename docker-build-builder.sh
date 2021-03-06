#!/bin/bash

# This script builds the docker image used to build the cross-compiler toolchain.

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
pushd "${BUILDDIR}/src"
docker build -t drobo/cross-compiler-builder:20.04 .
popd
