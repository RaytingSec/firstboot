#!/bin/bash

sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

# Debian/Ubuntu
# sudo apt install -y ffmpeg  # Dependencies

# Fedora
sudo dnf install -y ffmpeg AtomicParsley  # Dependencies

# ffmpeg: required for combining audio/video formats
# AtomicParsely: needed to add metadata to m4a and some other formats
# ERROR: AtomicParsley was not found. Please install.
