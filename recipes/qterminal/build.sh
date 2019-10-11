#!/usr/bin/env bash
set -ex

mkdir -p build/
pushd build
cmake .. -DCMAKE_INSTALL_PREFIX="${PREFIX}"
make
make check
make install
popd
