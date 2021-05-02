#!/bin/bash

# Dependencies

sudo apt install build-essential

# Download VMware Workstation installer

# Have to use something other than wget UA string
wget --user-agent="Mozilla/5.0" \
    --trust-server-names \
    https://www.vmware.com/go/getWorkstation-linux
chmod +x ./VMware-Workstation-Full-*.bundle

# Installation

# Unfortunately seems like these extra configs don't do anything
# Actually it seems to set these as the default options so you can press enter through it all
# https://docs.vmware.com/en/VMware-Workstation-Pro/15.0/com.vmware.ws.using.doc/GUID-42F4754B-7547-4A4D-AC08-353D321A051B.html
sudo ./VMware-Workstation-Full-*.bundle \
    --console \
    --eulas-agreed \
    --set-setting vmware-workstation serialNumber ZF3R0-FHED2-M80TY-8QYGC-NPKYF \
    --set-setting vmware-workstation-app softwareUpdateEnabled yes

# Configuration

# Hide vmware extra programs
# Could also hide netcfg
echo "NoDisplay=true" | sudo tee -a /usr/share/applications/vmware-player.desktop
# /usr/local doesn't seem to need replacing
#echo "NoDisplay=true" | sudo tee -a /usr/local/share/applications/vmware-{player,netcfg}.desktop

# Configure
vmware
# might need to fix package: https://bbs.archlinux.org/viewtopic.php?id=222520
# echo "mks.gl.allowBlacklistedDrivers = TRUE" >> ~/.vmware/preferences
# cd ~/vmware
# find -name "*.vmx" -exec vmware {} \;
