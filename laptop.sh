#!/bin/bash


# Deprecated, see gnome-host.sh
# gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

# Apply logind.conf settings, namely ignoring lid switch when docked
# cat /tmp/firstboot/linux-config/logind.conf | sudo -E tee -a /etc/systemd/logind.conf > /dev/null

# Enable sysrq commands
# sudo cp /tmp/firstboot/linux-config/90-sysrq.conf /etc/sysctl.d/
#echo "kernel.sysrq = 1" | sudo -E tee -a /etc/sysctl.d/90-sysrq.conf > /dev/null
#echo "kernel.task_delayacct = 1" | sudo -E tee -a /etc/sysctl.d/90-task_delayacct.conf > /dev/null

cat <<EOT | sudo tee -a /etc/sysctl.d/90-user.conf
kernel.sysrq = 1
kernel.task_delayacct = 1
EOT
