#!/bin/bash

# Now requires Zulu Java
# Source: https://tlc.thinkorswim.com/center/faq/technical#q_011111111111111114

wget https://cdn.azul.com/zulu/bin/zulu-repo-1.0.0-1.noarch.rpm
sudo dnf install -y zulu-repo-1.0.0-1.noarch.rpm
sudo dnf install -y zulu17
# Set interactively
# sudo alternatives --config java
# Can confirm path with:
# alternatives --display java | grep '/bin/java' | grep zulu
sudo alternatives --set java /usr/lib/jvm/java-17-zulu-openjdk/bin/java

# Install Thinkorswim itself

wget https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh
chmod +x thinkorswim_installer.sh
./thinkorswim_installer.sh -c  # CLI mode
# Accept terms and conditions, use default options:
# lang: enter
# install: enter
# account: enter
# license: enter or 2
# user: enter
# folder: enter
# desktop integration: enter
# run: enter

# Configuration

# .desktop file for running via Applications selector
mv ~/Desktop/thinkorswim.desktop ~/.local/share/applications/

# Running

# ~/thinkorswim/thinkorswim  # Installed to your home directory
# In prior versions, garbage dir would be created on each run
# thinkorswim && rm -r ~/.com.devexperts.tos.ui.user.login.ThinkOrSwimApplication/ && exit
