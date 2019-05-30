printf "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib\n" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install virtualbox-5.2 virtualbox-ext-pack

vboxmanage natnetwork add --netname vboxnat1 --network "192.168.60.0/24" --enable --dhcp on
cd ~/
rm -r "VirtualBox VMs"
ln -s ./data/vbox "VirtualBox VMs"
