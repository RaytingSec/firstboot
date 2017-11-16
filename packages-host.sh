#!/bin/bash

packages=(
    "vlc"
    "clementine"
    "bsdgames"
    "bsdgames-nonfree"
    # Security and dev
    "nmap"
    "masscan"
    #"zmap"
    "wireshark"
    "hexedit"
    "scanmem"
    "inotify-tools"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo apt install -y $selected_packages

packages_pip+=(
    "setuptools"
    "bs4"
    "markdown"
    "requests"
    "crypto"
    "numpy"
    "matplotlib"
    "requests[security]"
    # keyczar
    # nacl
)
for p in "${packages_pip[@]}"; do
    selected_pip+=$p" "
done
sudo -H pip3 install --upgrade $selected_pip
