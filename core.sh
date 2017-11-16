#!/bin/bash

sudo apt update
sudo apt upgrade -y
packages=(
    "vim"
    "tmux"
    "byobu"
    "tree"
    "colordiff"
    "software-properties-common"
    "ppa-purge"
    "git"
    "python3-pip"

    "htop"
    "jnettop"
    "iotop"

    "sshfs"
    "openvpn"
    "whois"
    "curl"
    "httpie"

    "cowsay"
    "fortune"
    "fortunes"
    "fortunes-debian-hints"
    "fortunes-ubuntu-server"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo apt install -y $selected_packages

# Configure
mv /tmp/linux-config/.bash* ~/
sudo cp /tmp/foxsay/rayting.cow /usr/share/cowsay/cows/
sudo rm /usr/share/games/fortunes/{men-women,zippy,ascii-art,ethnic}*

mv /tmp/linux-config/.vimrc ~/
mkdir -p ~/.vim/colors
mv /tmp/molokai.vim ~/.vim/colors

mv /tmp/linux-config/.gitconfig ~/
mv /tmp/linux-config/.tmux.conf ~/

cat /tmp/linux-config/inputrc | sudo -E tee -a /etc/inputrc > /dev/null
