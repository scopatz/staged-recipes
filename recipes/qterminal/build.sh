#!/usr/bin/env bash
set -ex

mkdir -p build/
pushd build
cmake .. \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_BUILD_TYPE=Release
make
make check
make install
popd
