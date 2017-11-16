#!/bin/bash

# Installation
./VMware-Workstation-Full-12.5.0-4352439.x86_64.bundle
# append `NoDisplay=true` to /usr/share/applications/ vmware-player and vmware-netcfg desktop files
echo "NoDisplay=true" | sudo tee -a /usr/share/applications/vmware-{player,netcfg}.desktop

# Configure
vmware
# might need to fix package: https://bbs.archlinux.org/viewtopic.php?id=222520
echo "mks.gl.allowBlacklistedDrivers = TRUE" >> ~/.vmware/preferences
cd ~/vmware
find -name "*.vmx" -exec vmware {} \;

./thinkorswim_installer.sh
thinkorswim && rm -r ~/.com.devexperts.tos.ui.user.login.ThinkOrSwimApplication/ && exit