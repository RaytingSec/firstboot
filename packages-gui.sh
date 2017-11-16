#!/bin/bash

sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo add-apt-repository -y ppa:phoerious/keepassxc
sudo add-apt-repository -y ppa:mozillateam/firefox-next
sudo apt update

packages=(
    "fonts-hack-otf"
    "vlc"
    "simplescreenrecorder"
    "keepassxc"
    "firefox"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo apt install -y $selected_packages

# VLC config
cp /tmp/linux-config/vlc-qt-interface.conf ~/.config/vlc
