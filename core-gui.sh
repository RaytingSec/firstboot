#!/bin/bash

echo "Running core-gui.sh"

echo "Switching to grub boot to console mode..."
# substitute change line in /etc/default/grub
# GRUB_CMDLINE_LINUX_DEFAULT=""
# sudo ...
# sed "s/GRUB_CMDLINE_LINUX_DEFAULT=.*/GRUB_CMDLINE_LINUX_DEFAULT=\"\"/g"
sudo sed -i "/GRUB_CMDLINE_LINUX_DEFAULT=/c\GRUB_CMDLINE_LINUX_DEFAULT=\"\"" /etc/default/grub
sudo update-grub
