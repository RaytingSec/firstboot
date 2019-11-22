#!/bin/bash

# Install
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text sublime-merge

# Configure
mkdir -p ~/.config/sublime-text-3/Packages/User/
wget --directory-prefix ~/.config/sublime-text-3/Installed\ Packages "https://packagecontrol.io/Package Control.sublime-package"
# cp /tmp/firstboot/sublime-config/*.sublime* ~/.config/sublime-text-3/Packages/User/

# cp ~/.config/mimeapps.list{,.bak}
# sed -i 's/gedit/sublime_text/g' ~/.config/mimeapps.list
