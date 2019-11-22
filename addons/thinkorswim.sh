#!/bin/bash

# Java JRE required to run thinkorsim
sudo dnf  install java-1.8.0-openjdk

wget https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.sh
chmod +x thinkorswim_installer.sh
./thinkorswim_installer.sh
# thinkorswim && rm -r ~/.com.devexperts.tos.ui.user.login.ThinkOrSwimApplication/ && exit

~/thinkorswim/thinkorswim  # Installed to your home directory
