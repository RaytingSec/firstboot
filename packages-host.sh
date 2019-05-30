#!/bin/bash

# Add repos
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo add-apt-repository -y ppa:phoerious/keepassxc
# sudo add-apt-repository -y ppa:mozillateam/firefox-next
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update

# Install stuff
packages=(
    # Host machine things
    "xserver-xorg-input-synaptics"  # touchpad fix
    "cpufrequtils"
    "lm-sensors"
    "smartmontools"
    "tlp"  # Disabled since power management may break or negatively alter things
    "tp-smapi-dkms"  # tlp thinkpad extra stuff
    "acpi-call-dkms"  # tlp thinkpad extra stuff
    "nautilus-dropbox"
    # "solaar-gnome3"  # Logitech receiver client
    # "pm-utils"  # Used for pm-suspend and other things but sysctl does that
    "NetworkManager-openvpn"
    "NetworkManager-openvpn-gnome"

    # General utils
    "gparted"
    "keepassxc"
    "firefox"
    "chromium-browser"
    "vlc"
    "clementine"
    "simplescreenrecorder"
    "pdfmod"
    "gnome-power-statistics"
    # "gnome-..."
    # debian distros
    # "bsdgames"
    # "bsdgames-nonfree"
    # fedora distros
    "bsd-games"
    "spotify-client"
    #"youtube-dl"

    # Various dependencies for compiling
    "gcc-c++"
    "libdrm-devel"

    # Security and dev
    "net-tools"
    "nodejs"
    "nmap"
    "masscan"
    "sqlitebrowser"

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

# Youtube-DL
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# sudo dnf install AtomicParsley  # Fedora 29 needs this package to add metadata

# VLC config
cp /tmp/configs/linux-config/vlc-qt-interface.conf ~/.config/vlc

# Python packages
packages_pip+=(
    # "youtube_dl"
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
