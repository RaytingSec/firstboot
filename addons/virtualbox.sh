#!/bin/bash

echo "deb https://download.virtualbox.org/virtualbox/debian <mydist> contrib" | sudo tee -a /etc/apt/sources.list

wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install virtualbox-5.2
# Add ppa
# update
# install

vboxmanage natnetwork add --netname vboxnat1 --network "192.168.60.0/24" --enable --dhcp on
ln -s ./Data/vbox "VirtualBox VMs"
# Copy config files

# Add user to group
