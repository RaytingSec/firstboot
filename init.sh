#!/bin/bash
# Configure a fresh Linux installation. Hit the ground running!
# For the sake of simplicity, development will focus on Ubuntu Gnome.

OPTS=`getopt -o chvs --long config,host,vm,server -n 'init.sh' -- "$@"`
if [ $? != 0 ] ; then echo "argument parsing failed" >&2 ; exit 1 ; fi
eval set -- "$OPTS"

params=""
config=false
host=false
vm=false
server=false
while true; do
    case "$1" in
        # -c | --config ) config=true; shift;;
        -h | --host )   host=true; params+="--host "; shift;;
        -v | --vm )     vm=true; params+="--vm "; shift;;
        -s | --server ) server=true; params+="--server "; shift;;
        # -- ) shift; break ;;
        * ) break ;;
    esac
done

# if $config; then
#     # Set up for init script
#     exit 0
# fi

data=~/Data
if [[ -d $data ]]; then
    echo "Using ~/Data"
elif [[ -d "/data/" ]]; then
    echo "Using /data/"
    ln -s /data/ ~/Data
else
    echo "Warning, no data directory found"
    exit 1
fi
# params+="--dir $data"

if $host || $vm; then
    echo "Installing drivers"
    sleep 2
    bash ./drivers.sh $params --dir $data
fi

if $host; then
    echo "Creating directories"
    sleep 2
    bash ./directories.sh --libraries --symlinks --torrents --dir $data
fi

# Install packages
echo "Updating packages"
sleep 2
bash ./packages.sh --update
echo "Installing packages"
sleep 2
bash ./packages.sh --install $params
# bash ./keepass.sh

# # Configure things
# scp $configfiles
# scp $wallpapers
echo "Configuring"
sleep 2
bash ./configure.sh --dir $data
