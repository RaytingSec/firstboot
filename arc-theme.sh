#!/bin/bash
# Commands to build arc theme

# Theme

# Dependencies
sudo apt install autoconf automake pkg-config libgtk-3-dev git gnome-themes-standard gtk2-engines-murrine
#git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
git clone https://github.com/eti0/arc-grey-theme --depth 1 && cd arc-grey-theme  # More neutral colored
./autogen.sh --prefix=/usr --disable-light --disable-unity --disable-dark
sudo make install

# Icons

git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
