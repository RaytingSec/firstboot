#!/bin/bash
# Configure a fresh Linux installation

# Packages
HOST=true
VM=true
DEV=true
SERVER=false

# Desktop environments
# Options: unity, gnome, kde, xfce, cinamon
DESKTOP_ENV='kde'
# Use getopts

# Libraries

# Find data dir
DATA=/home/$USER/Data
if [ -d "/data" ]; then
    ln -s /data ~/Data
    echo "Using /data"
elif [ -d $DATA ]; then
    echo "Using ~/data"
else
    echo "No data directory found, exiting"
    exit 1
fi

# Drivers if necessary
bash ./drivers.sh

# Link to common dirs
bash ./directories.sh

# Configure things
bash ./configure.sh

# Install packages
bash ./packages.sh --setup --desktop-env $DESKTOP_ENV
bash ./packages.sh --install



# If this turns into a makefile...
# make drivers
# make dirs
# make configs
# make packages
# make install