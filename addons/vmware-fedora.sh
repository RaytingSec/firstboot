#!/bin/bash

# Installation
# Dependencies
sudo dnf install -y kernel-{devel,headers}

# Unfortunately seems like these extra configs don't do anything
# https://docs.vmware.com/en/VMware-Workstation-Pro/15.0/com.vmware.ws.using.doc/GUID-42F4754B-7547-4A4D-AC08-353D321A051B.html
cd /media/sda/data/Staging
sudo ./VMware-Workstation-Full-*.bundle --console --eulas-agreed \
	--set-setting vmware-workstation serialNumber FU512-2DG1H-M85QZ-U7Z5T-PY8ZD \
	--set-setting vmware-workstation-app softwareUpdateEnabled yes
# sudo ./VMware-Workstation-Full-*.bundle --console --eulas-agreed

# append `NoDisplay=true` to /usr/share/applications/ vmware-player and vmware-netcfg desktop files
echo "NoDisplay=true" | sudo tee -a /usr/share/applications/vmware-player.desktop  # Could remove vmware-netcfg too
# /usr/local doesn't seem to need replacing
#echo "NoDisplay=true" | sudo tee -a /usr/local/share/applications/vmware-{player,netcfg}.desktop

# Configure
# First launch compiles kernel headers, exit after completion
# refer to notes on kernel headers fix
# git clone ... && cd ...
# make
# sudo make install
# sudo systemctl restart vmware.service

# Nvidia graphics fix. Seems unnecessary now.
# might need to fix package: https://bbs.archlinux.org/viewtopic.php?id=222520
# echo "mks.gl.allowBlacklistedDrivers = TRUE" >> ~/.vmware/preferences

# This no longer is time efficient on Workstation 15.5 or later
# cd ~/vmware/
# find -name "*.vmx" -exec vmware {} \;

# Fedora
# bug where ovftool can't run, causing .ova files to fail to import, needs some lib files
# sudo dnf install libnsl libxcrypt-compat -y
