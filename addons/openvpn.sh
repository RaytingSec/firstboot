#!/bin/bash

sudo dnf install -y openvpn
sudo dnf install -y NetworkManager-openvpn NetworkManager-openvpn-gnome  # Host package for NetworkManager OpenVPN tools

# Dependencies
sudo wget "https://raw.githubusercontent.com/ProtonVPN/scripts/master/update-resolv-conf.sh" -O "/etc/openvpn/update-resolv-conf"
sudo chmod +x "/etc/openvpn/update-resolv-conf"

# Create auth file
sudo touch /etc/openvpn/client/protonvpn_auth.txt
# nvim /etc/openvpn/client/protonvpn_auth.txt
# ...

# Get ProtonVPN config file
# https://account.protonvpn.net/downloads > Country configs

sudo mv ~/Downloads/us.protonvpn.net.udp.ovpn /etc/openvpn/server/

# Start the vpn:
# sudo openvpn \
#     --config /etc/openvpn/server/us.protonvpn.net.udp.ovpn \
#     --auth-user-pass /etc/openvpn/client/protonvpn_auth.txt
