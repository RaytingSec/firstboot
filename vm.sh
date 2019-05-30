#!/bin/bash

# VMware (doesn't seem to be needed)
# sudo apt install -y open-vm-tools-{desktop,dkms}  # dkms no longer available
# sudo apt install -y open-vm-tools-desktop

# VirtualBox (seems to break it though)
sudo apt install -y virtualbox-guest-{x11,dkms,utils}
sudo usermod -aG vboxsf $(whoami)
# sudo apt install -y virtualbox-guest-dkms
