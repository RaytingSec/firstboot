#!/bin/bash

sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update
sudo apt install nvidia-410

# sudo dnf install gwe  # Nvidia GPU monitoring
