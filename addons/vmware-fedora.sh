#!/bin/bash

# Dependencies

# sudo apt install build-essential
sudo dnf install -y kernel-{devel,headers}

# Download VMware Workstation installer

# Have to use something other than wget UA string
wget --user-agent="Mozilla/5.0" \
    --trust-server-names \
    https://www.vmware.com/go/getWorkstation-linux
chmod +x ./VMware-Workstation-Full-*.bundle

# Installation

# https://docs.vmware.com/en/VMware-Workstation-Pro/15.0/com.vmware.ws.using.doc/GUID-42F4754B-7547-4A4D-AC08-353D321A051B.html
# Populates most parameters, just enter: yes, no, <enter>, <enter>
sudo ./VMware-Workstation-Full-*.bundle \
    --console \
    --eulas-agreed \
    --set-setting vmware-workstation serialNumber ZF3R0-FHED2-M80TY-8QYGC-NPKYF \
    --set-setting vmware-workstation-app softwareUpdateEnabled yes

# Configuration

# Hide vmware-player and vmware-netcfg shortcuts
# /usr/local doesn't seem to need replacing
echo "NoDisplay=true" | sudo tee -a /usr/share/applications/vmware-player.desktop
# Leave netcfg
# echo "NoDisplay=true" | sudo tee -a /usr/share/applications/vmware-{player,netcfg}.desktop

# Usually will need to compile kernel headers, refer to notes
vmware

# Load virtual machines:
# File > Scan for Virtual Machines ...

# Nvidia graphics fix. Seems unnecessary now.
# might need to fix package: https://bbs.archlinux.org/viewtopic.php?id=222520
# echo "mks.gl.allowBlacklistedDrivers = TRUE" >> ~/.vmware/preferences

# Fedora
# bug where ovftool can't run, causing .ova files to fail to import, needs some lib files
# sudo dnf install libnsl libxcrypt-compat -y
