#!/bin/bash

OPTS=`getopt -o hvd: --long host,vm,dir: -n 'drivers.sh' -- "$@"`
if [ $? != 0 ] ; then echo "argument parsing failed" >&2 ; exit 1 ; fi
eval set -- "$OPTS"

host=false
vm=false
dir=""
while true; do
    case "$1" in
        -h | --host ) host=true; shift;;
        -v | --vm )   vm=true; shift;;
        -d | --dir )  dir=$2; shift;;
        # -- ) shift; break ;;
        * ) break ;;
    esac
done

if $host; then
    echo "Installing iwlwifi"
    if [[ $dir == "" ]]; then
        echo "deb file location not specified! Exiting..."
        exit 1
    fi
    # printf "deb http://ftp.us.debian.org/debian sid main non-free\n" >> /etc/apt/sources.list
    # sudo apt update
    # sudo apt install firmware-iwlwifi
    # sudo dpkg -i $dir/firmware-iwlwifi.deb
    echo $dir/firmware-iwlwifi.deb
elif $vm; then
    echo "Installing open vm drivers"
    echo "sudo apt update"
    echo "sudo apt install open-vm-tools-desktop open-vm-tools-dkms"
fi
