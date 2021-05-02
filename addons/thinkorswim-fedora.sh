#!/bin/bash

# Now requires Zulu Java
# Source: https://tlc.thinkorswim.com/center/faq/technical#q_011111111111111114

wget https://cdn.azul.com/zulu/bin/zulu-repo-1.0.0-1.noarch.rpm
sudo dnf install -y zulu-repo-1.0.0-1.noarch.rpm
sudo dnf install -y zulu-11
# sudo update-alternatives --config java
sudo update-alternatives --set java /usr/lib/jvm/zulu11/bin/java

# Install Thinkorswim itself

wget https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh
chmod +x thinkorswim_installer.sh
./thinkorswim_installer.sh  # Accept terms and conditions, use default options

# Configuration

# .desktop file for running via Applications selector
mv ~/Desktop/thinkorswim.desktop ~/.local/share/applications/

# Running

# ~/thinkorswim/thinkorswim  # Installed to your home directory
# In prior versions, garbage dir would be created on each run
# thinkorswim && rm -r ~/.com.devexperts.tos.ui.user.login.ThinkOrSwimApplication/ && exit
