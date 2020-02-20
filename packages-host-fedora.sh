#!/bin/bash

# Install RPM Fusion
# https://rpmfusion.org/Configuration
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Add RPM Fusion keys
# https://rpmfusion.org/keys
#gpg --keyserver pgp.mit.edu --recv-keys 80171C8D2CC8AAB84C8448E9BDD6ECC41D14A795
#gpg --keyserver pgp.mit.edu --recv-keys 80C3B2C6E727F3E092B473E03DF2CE43C0AEDA6E

# Something about repository files
# Doesn't seem necesary on Fedora 30
sudo dnf install fedora-workstation-repositories -y

sudo dnf update -y

# Install stuff
packages=(
    # Host machine things
    "cpufrequtils"
    "lm_sensors"
    "smartmontools"
    "nautilus-dropbox"
    "solaar"  # Logitech receiver client
    # "NetworkManager-openvpn"
    # "NetworkManager-openvpn-gnome"
    "blueman"
    "redshift-gtk"
    
    # tlp
    # NOTE: tlp seems to cause bugs when trying to optimize battery life. Disabled by default.
    # "tlp"  # Disabled since power management may break or negatively alter things
    # "tp-smapi-dkms"  # tlp thinkpad extra stuff
    # "acpi-call-dkms"  # tlp thinkpad extra stuff

    # General utils
    "gparted"
    "keepassxc"
    "firefox"
    "chromium"
    "simplescreenrecorder"
    "gnome-power-manager"
    "bsd-games"
    "inotify-tools"
    "transmission"
    "guake"

    # Entertainment
    "vlc"
    "clementine"
    "lpf-spotify-client"
    "steam"

    # Various dependencies for compiling
    "gcc-c++"
    "libdrm-devel"
    "python3-devel"  # used for building talib python bindings

    # Security and dev
    "net-tools"
    "nodejs"
    "nmap"
    "whois"
    "masscan"
    "sqlitebrowser"
    #"zmap"
    "wireshark"
    "hexedit"
    "scanmem"
    "mosh"

    # Optional things dependent on preference
    "inkscape"
    "gnome-tweaks"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo dnf install -y $selected_packages

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
sudo pip3 install $selected_pip

# Additional packages
chrome_fedora_url="https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm"
slack_fedora_url="$(wget -qO- https://slack.com/downloads/instructions/fedora | grep x86_64 | cut -d \" -f 4)"
# discord_fedora_url=""  # No longer installign discord by default. Stick to web app.
wget --no-clobber --continue --trust-server-names $chrome_fedora_url $slack_fedora_url
sudo dnf install -y ./*.rpm

# lm_sensors config
sudo sensors-detect --auto

# Clementine Dependency
# .m4a files require this gstreamer plugin for some reason
sudo dnf install -y gstreamer1-libav  # gstreamer-plugins-bad-nonfree

# Youtube-DL
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
sudo dnf install -y ffmpeg AtomicParsley # Dependencies
# ffmpeg: required for combining audio/video formats
# AtomicParsely: needed to add metadata to m4a and some other formats
# ERROR: AtomicParsley was not found. Please install.

# VLC config
# Doesn't seem to work
# cp /tmp/firstboot/linux-config/vlc-qt-interface.conf ~/.config/vlc

# OpenVPN
# Fedora OpenVPN lacks update-resolv-conf.sh tool, need to install manually
sudo wget https://raw.githubusercontent.com/alfredopalhares/openvpn-update-resolv-conf/master/update-resolv-conf.sh -O /etc/openvpn/update-resolv-conf
sudo chmod +x /etc/openvpn/update-resolv-conf

# Additional software
# telegram.sh
# sublime-fedora.sh
# vmware-fedora.sh
