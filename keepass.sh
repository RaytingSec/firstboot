#!/bin/bash
# Commands to build keepass

# Dependencies
sudo apt install build-essential cmake g++ libxi-dev libxtst-dev qtbase5-dev libqt5x11extras5-dev qttools5-dev qttools5-dev-tools libgcrypt20-dev zlib1g-dev libyubikey-dev libykpers-1-dev
git clone https://github.com/keepassxreboot/keepassxc.git --depth 1 && cd keepassxc
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
