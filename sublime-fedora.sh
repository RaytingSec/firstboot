#!/bin/bash

# Install
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text sublime-merge

# Configure
# cp /tmp/configs/sublime-config/*.sublime* ~/.config/sublime-text-3/Packages/User/
