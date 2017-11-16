#!/bin/bash

packages=(
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
    "ipython"
    "virtualenv"
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
sudo -H pip3 install --upgrade pip
for p in "${packages_pip[@]}"; do
    selected_pip+=$p" "
done
sudo -H pip3 install $selected_pip

# Python configs
ipython profile create
mv /tmp/linux-config/ipython_config.py ~/.ipython/profile_default/
cp /tmp/linux-config/.py_autovenv
