#!/bin/bash

# Required for sublime anaconda plugin to work
# Install with sudo so virtualenv will be happy
sudo dnf install -y python3-pyasynchat
# sudo python -m pip install pyasynchat

# Install
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text sublime-merge

# Configure
# Package manager
mkdir -p ~/.config/sublime-text/Packages/User/
wget --directory-prefix ~/.config/sublime-text/Installed\ Packages "https://packagecontrol.io/Package Control.sublime-package"
# cp /tmp/init/sublime-config/*.sublime* ~/.config/sublime-text/Packages/User/

# Set as default for reading text files
cat <<EOT >> ~/.config/mimeapps.list

[Added Associations]
text/plain=sublime_text.desktop;
text/markdown=sublime_text.desktop;

[Default Applications]
text/plain=sublime_text.desktop
text/markdown=sublime_text.desktop
EOT
