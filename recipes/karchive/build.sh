#!/usr/bin/env bash
set -ex

mkdir build
pushd build

cmake -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_LIBRARY_OUTPUT_DIRECTORY=$PREFIX/lib \
      -DCMAKE_BUILD_TYPE=Release     \
      -Wno-dev \
      ..

make -j ${CPU_COUNT}
make test
make install
popd
