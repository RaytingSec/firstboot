#!/bin/bash

# Install
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text

# Configure
mkdir -p ~/.config/sublime-text-3/Packages/User/
wget --directory-prefix ~/.config/sublime-text-3/Installed\ Packages "https://packagecontrol.io/Package Control.sublime-package"
cp /tmp/configs/sublime-config/*.sublime* ~/.config/sublime-text-3/Packages/User/

# Default application
sudo sed -i 's/gedit/sublime_text/g' /etc/gnome/defaults.list
