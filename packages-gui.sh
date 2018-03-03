#!/bin/bash

# sudo add-apt-repository -y ppa:gnome-terminator
# sudo apt udpate

packages=(
    "fonts-hack-otf"
    # "terminator"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo apt install -y $selected_packages
