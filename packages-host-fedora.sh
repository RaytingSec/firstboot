#!/bin/bash

# Install RPM Fusion
# https://rpmfusion.org/Configuration
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Add RPM Fusion keys
# https://rpmfusion.org/keys
#gpg --keyserver pgp.mit.edu --recv-keys 80171C8D2CC8AAB84C8448E9BDD6ECC41D14A795
#gpg --keyserver pgp.mit.edu --recv-keys 80C3B2C6E727F3E092B473E03DF2CE43C0AEDA6E

# Third party repositories
sudo dnf install -y fedora-workstation-repositories

sudo dnf update -y

# Install stuff
packages=(
    # Host machine things
    #"cpufrequtils"
    "lm_sensors"
    "smartmontools"
    "nautilus-dropbox"
    # "solaar"  # Logitech receiver client
    # "NetworkManager-openvpn"
    # "NetworkManager-openvpn-gnome"
    # "blueman"
    # "redshift-gtk"
    "gwe"  # Nvidia GPU monitoring
    
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
    #"simplescreenrecorder"
    "bsd-games"
    "transmission"
    # "guake"
    # "inotify-tools"

    # Entertainment
    "vlc"
    "strawberry"
    "lpf-spotify-client"
    # "steam"

    # Various dependencies for compiling
    #"gcc-c++"
    #"libdrm-devel"
    "python3-ipython"
    "python3-devel"  # used for building talib python bindings

    # Security and dev
    "net-tools"
    "nodejs"  # Required for subl htmlprettify
    "nmap"
    "whois"
    "masscan"
    "libpcap-devel"  # Dependency for masscan
    "sqlitebrowser"
    #"zmap"
    "wireshark"
    "hexedit"
    "scanmem"
    "mosh"

    # Optional things dependent on preference
    "inkscape"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo dnf install -y $selected_packages

# Additional packages
slack_rpm_url="$(wget -qO- https://slack.com/downloads/instructions/fedora | grep -oE 'https://downloads.slack-edge.com/releases/linux/(.)+x86_64.rpm')"
sudo dnf install -y $slack_rpm_url

# Extra software via Flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y flathub \
    com.spotify.Client \
    com.discordapp.Discord

# Optional
# Mutimedia https://docs.fedoraproject.org/en-US/quick-docs/assembly_installing-plugins-for-playing-movies-and-music/
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia

echo "Configuring python..."
ipython profile create
cat /tmp/firstboot/linux-config/ipython_config.py | tee -a ~/.ipython/profile_default/ipython_config.py

# Python packages
# packages_pip+=(
#     # "youtube_dl"
#     "setuptools"
#     "bs4"
#     "markdown"
#     "requests"
#     "crypto"
#     "numpy"
#     "matplotlib"
#     "requests[security]"
#     # keyczar
#     # nacl
# )
# for p in "${packages_pip[@]}"; do
#     selected_pip+=$p" "
# done
# sudo pip3 install $selected_pip

# NeoVIM Semshi plugin will need `pynvim` to work
pip3 install pynvim

# lm_sensors config
sudo sensors-detect --auto

# Clementine Dependency
# .m4a files require this gstreamer plugin for some reason
sudo dnf install -y gstreamer1-libav  # gstreamer-plugins-bad-nonfree

# VLC config
# Doesn't seem to work
# cp /tmp/firstboot/linux-config/vlc-qt-interface.conf ~/.config/vlc

# OpenVPN
# Fedora OpenVPN lacks update-resolv-conf.sh tool, need to install manually
# sudo wget https://raw.githubusercontent.com/alfredopalhares/openvpn-update-resolv-conf/master/update-resolv-conf.sh -O /etc/openvpn/update-resolv-conf
# sudo chmod +x /etc/openvpn/update-resolv-conf

cat /tmp/firstboot/linux-config/dnf.conf | sudo -E tee -a /etc/dnf/dnf.conf > /dev/null
