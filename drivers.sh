#!/bin/bash

# Debian Wifi Drivers if they're ever needed
function DebDrivers {
    # Add repos
    echo "
    deb http://ftp.de.debian.org/debian/ jessie main non-free contrib
    # deb-src http://ftp.de.debian.org/debian/ jessie main non-free contrib

    deb http://security.debian.org/ jessie/updates main contrib non-free
    # deb-src http://security.debian.org/ jessie/updates main contrib non-free
    " >> /etc/apt/sources.list

    sudo apt update && sudo apt firmware-iwlwifi firmware-realtek
}
