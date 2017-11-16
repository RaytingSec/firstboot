#!/bin/bash

# Configure
gsettings set org.gnome.desktop.background picture-uri 'file://'$HOME'/Pictures/Wallpapers/background.png'
gsettings set org.gnome.desktop.screensaver picture-uri 'file://'$HOME'/Pictures/Wallpapers/lockscreen.jpg'
gsettings set org.gnome.shell favorite-apps "['telegramdesktop.desktop', 'slack.desktop', 'google-chrome.desktop', 'sublime_text.desktop', 'gnome-terminal.desktop', 'org.gnome.Nautilus.desktop', 'vmware-workstation.desktop', 'clementine.desktop']"
