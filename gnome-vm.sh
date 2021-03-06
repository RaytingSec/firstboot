#!/bin/bash

gsettings set org.gnome.desktop.interface enable-animations false  # performance
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'  # avoid host hotkey collision

# Disable lock and screen off
gsettings set org.gnome.desktop.screensaver lock-enabled false  # Disable lock screen
gsettings set org.gnome.desktop.session idle-delay 0  # No screensaver
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'

# Update notification
# This is in testing and only confirmed for Kali so far
gsettings set org.gnome.software download-updates-notify false  # Disable update notifications

# Default wallpaper
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/gnome/adwaita-timed.xml'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/gnome/adwaita-timed.xml'
