#!/bin/bash

# Packages
sudo apt install gnome-sushi gnome-clocks

# Power
# gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled true
# gsettings set org.gnome.settings-daemon.plugins.power idle-brightness 30
# gsettings set org.gnome.settings-daemon.plugins.power idle-dim true
# gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'suspend'
# gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 3600
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
# gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 1200
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'suspend'

# Nightlight
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic true
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature uint32 5500

# Touchpad
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
gsettings set org.gnome.desktop.peripherals.touchpad speed 0.15

# Wallpaper
gsettings set org.gnome.desktop.background picture-uri 'file://'$HOME'/Pictures/Wallpapers/background.png'
gsettings set org.gnome.desktop.screensaver picture-uri 'file://'$HOME'/Pictures/Wallpapers/lockscreen.jpg'

# Dock
gsettings set org.gnome.shell favorite-apps "['telegram-desktop.desktop', 'slack.desktop', 'google-chrome.desktop', 'sublime_text.desktop', 'vmware-workstation.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'org.keepassxc.KeePassXC.desktop']"
