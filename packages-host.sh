#!/bin/bash

# Add repos
sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo add-apt-repository -y ppa:phoerious/keepassxc
# sudo add-apt-repository -y ppa:mozillateam/firefox-next
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90

sudo apt update

# Install stuff
packages=(
    # Host machine things
    # "xserver-xorg-input-synaptics"  # touchpad fix
    "cpufrequtils"
    "lm-sensors"
    "smartmontools"
    "nautilus-dropbox"
    "solaar-gnome3"  # Logitech receiver client
    # "pm-utils"  # Used for pm-suspend and other things but sysctl does that
    # "NetworkManager-openvpn"  # No longer heavily using openvpn
    # "NetworkManager-openvpn-gnome"
    "redshift-gtk"  # Testing out Gnome-based night light shifting

    # tlp
    # NOTE: tlp seems to cause bugs when trying to optimize battery life. Disabled by default.
    # "tlp"  # Disabled since power management may break or negatively alter things
    # "tp-smapi-dkms"  # tlp thinkpad extra stuff
    # "acpi-call-dkms"  # tlp thinkpad extra stuff

    # General utils
    "gparted"
    "keepassxc"
    "firefox"
    "chromium-browser"
    "vlc"
    # "clementine"  # Unmaintained; deprecated
    # "strawberry"  # Need to download their .deb
    "simplescreenrecorder"
    "inkscape"
    "gimp"
    "transmission"
    "inotify-tools"

    # debian/ubuntu distros
    # "bsdgames"
    # "bsdgames-nonfree"
    # fedora distros
    # "bsd-games"

    # Gnome things
    "gnome-power-manager"
    # "gnome-..."
    "guake"

    # Various libraries
    "gstreamer1.0-libav"  # Multimedia
    "gstreamer1.0-plugins-bad"  # Multimedia

    # Various dependencies for compiling
    # "gcc-c++"
    # "libdrm-devel"
    # "python3-devel"  # Was needed on Fedora, possibly on ubuntu too

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
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo apt install -y $selected_packages

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
chrome_url="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
slack_url="$(wget -qO- https://slack.com/downloads/instructions/linux | grep amd64 | cut -d \" -f 4)"
discord_url="https://discordapp.com/api/download?platform=linux&format=deb"
wget --continue --trust-server-names $chrome_url $slack_url $discord_url
sudo apt install -y ./*.deb

# lm_sensors config
sudo sensors-detect --auto

# VLC config
# Doesn't seem to work
# cp /tmp/firstboot/linux-config/vlc-qt-interface.conf ~/.config/vlc

