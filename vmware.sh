#!/bin/bash

# Installation
./VMware-Workstation-Full-12.5.0-4352439.x86_64.bundle
# append `NoDisplay=true` to /usr/share/applications/ vmware-player and vmware-netcfg desktop files
echo "NoDisplay=true" | sudo tee -a /usr/share/applications/vmware-player.desktop  # Could remove vmware-netcfg too
# /usr/local doesn't seem to need replacing
#echo "NoDisplay=true" | sudo tee -a /usr/local/share/applications/vmware-{player,netcfg}.desktop

# Configure
vmware
# might need to fix package: https://bbs.archlinux.org/viewtopic.php?id=222520
echo "mks.gl.allowBlacklistedDrivers = TRUE" >> ~/.vmware/preferences
cd ~/vmware
find -name "*.vmx" -exec vmware {} \;

# Fedora
# bug where ovftool can't run, causing .ova files to fail to import, needs some lib files
sudo dnf install libnsl libxcrypt-compat -y
