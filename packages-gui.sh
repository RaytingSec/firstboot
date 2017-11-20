#!/bin/bash

packages=(
    "fonts-hack-otf"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo apt install -y $selected_packages
