#!/bin/bash

# Intel graphics and VA API packages
sudo dnf install -y \
    intel-media-driver \
    libva-utils \
    gstreamer1-vaapi

vainfo
