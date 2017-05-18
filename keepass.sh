#!/bin/bash
# Commands to build keepass

cd $keepass_dir
mkdir build
cd build
rm -r ./*
cmake -DCMAKE_BUILD_TYPE=Release \
      -DWITH_XC_AUTOTYPE=ON \
      -DWITH_TESTS=OFF \
      -DWITH_XC_YUBIKEY=ON \
      ..
make -j8
sudo make install
