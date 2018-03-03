#!/bin/bash

sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo add-apt-repository -y ppa:phoerious/keepassxc
sudo add-apt-repository -y ppa:mozillateam/firefox-next
sudo apt update

packages=(
    "keepassxc"
    "firefox"
    "chromium-browser"
    "vlc"
    "clementine"
    "simplescreenrecorder"
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

# Messaging packages
wget --no-clobber --continue --trust-server-names \
    "https://discordapp.com/api/download?platform=linux&format=deb" \
    "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" \
    "$(wget -qO- https://slack.com/downloads/instructions/linux | grep amd64 | cut -d \" -f 4)"
sudo apt install -y ./*.deb
# Signal
# curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
# echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
# sudo apt update && sudo apt install -y signal-desktop

# VLC config
cp /tmp/configs/linux-config/vlc-qt-interface.conf ~/.config/vlc

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
