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

# Set up as font, only applicable in Gnome
gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 10'
