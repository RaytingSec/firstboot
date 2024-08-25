#!/bin/bash

# Install from repo
# sudo dnf install dnf-plugins-core distribution-gpg-keys-copr
# sudo dnf copr enable heliocastro/hack-fonts
# sudo dnf install hack-fonts

# Alternatively, git clone and copy to fonts directory
wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
unzip Hack-*-ttf.zip
mv ttf/ hack/
sudo mv hack/ /usr/share/fonts/
rm Hack-*-ttf.zip

# Font configuration, not sure why this is needed
wget https://raw.githubusercontent.com/source-foundry/Hack/master/config/fontconfig/45-Hack.conf
sudo mv 45-Hack.conf /usr/share/fontconfig/conf.avail/
sudo ln -s /usr/share/fontconfig/conf.avail/45-Hack.conf /etc/fonts/conf.d/

# Update font cache, doesn't seem needed either
sudo fc-cache -v

# Set up as font, only applicable in Gnome
gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 10'
