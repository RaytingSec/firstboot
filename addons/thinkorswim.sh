#!/bin/bash
# Source: https://tlc.thinkorswim.com/center/faq/technical#q_011111111111111114

# Dependencies

# Zulu Java
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
sudo apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'
# sudo apt update  # Recent apt versions should automatically update
sudo apt install -y zulu-8
# Select zulu-8-amd64:
# sudo update-alternatives --config java
# sudo update-alternatives --config javac

# Install thinkorswim

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
