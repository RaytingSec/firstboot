#!/bin/bash

echo "Installing Sublime..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-text sublime-merge

echo "Configuring Sublime..."
mkdir -p ~/.config/sublime-text-3/Packages/User/
wget --directory-prefix ~/.config/sublime-text-3/Installed\ Packages "https://packagecontrol.io/Package Control.sublime-package"
cp /tmp/firstboot/sublime-config/*.sublime* ~/.config/sublime-text-3/Packages/User/

echo "Setting as default application over gedit..."
# sudo sed -i 's/gedit/sublime_text/g' /etc/gnome/defaults.list  # Note this file seems to vary between distros
cp /usr/share/applications/mimeapps.list ~/.config/mimeapps.list  # mime file might not be created
sudo sed -i 's/org.gnome.gedit.desktop/sublime_text.desktop/g' ~/.config//mimeapps.list

echo "Launching sublime to kick off auto updates..."
subl
