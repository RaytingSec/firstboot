#!/bin/bash

# Configs
CONFIGS=~/code/linux-config

# dotfiles (bash, git, vim, etc.)
cp $CONFIGS/.* ~/

# vim
mkdir -p ~/.vim/colors
mv $CONFIGS/molokai.vim ~/.vim/colors

# cowsay
sudo cp $CONFIGS/rayting.cow /usr/share/cowsay/cows/

# inputrc
cat inputrc | sudo -E tee /etc/inputrc > /dev/null

# sublime
CONFIGS=~/code/sublime-config
wget --directory-prefix="~/.config/sublime-text-3/Installed Packages" https://packagecontrol.io/Package%20Control.sublime-package
cp $CONFIGS/* ~/.config/sublime-text-3/Packages/User/

# Shell
gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 9'
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.background picture-uri 'file://'$HOME'/Pictures/Wallpapers/background.png'
gsettings set org.gnome.desktop.screensaver picture-uri 'file://'$HOME'/Pictures/Wallpapers/lockscreen.jpg'
gsettings set org.gnome.shell favorite-apps ['google-chrome.desktop', 'firefox.desktop', 'sublime_text.desktop', 'gnome-terminal.desktop', 'org.gnome.Nautilus.desktop']
printf "[Settings]\ngtk-application-prefer-dark-theme=1"$ > ~/.config/gtk-3.0/settings.ini

# Windows manager
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

# Input
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 14
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true

# Gnome
# gsettings set org.gnome.shell favorite-apps ['telegramdesktop.desktop', 'slack.desktop', 'google-chrome.desktop', 'vmware-workstation.desktop', 'vlc.desktop', 'sublime_text.desktop', 'gnome-terminal.desktop', 'org.gnome.Nautilus.desktop']
# gsettings set org.gnome.shell enabled-extensions['alternate-tab@gnome-shell-extensions.gcampax.github.com', 'battery-percentage@nohales.org', 'dash-to-dock@micxgx.gmail.com', 'freon@Veske', 'impatience@gfxmonk.net', 'drive-menu@gnome-shell-extensions.gcampax.github.com', 'mediaplayer@patapon.info', 'TopIcons@phocean.net']

# Terminal
default_uuid="b1dcc9dd-5262-4d8d-a863-c897e6d979b9"
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ $KEY
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ default-size-columns 120
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ default-size-rows 40
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ foreground-color 'rgb(255,255,255)'x
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ background-color 'rgb(0,0,0)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-theme-transparency false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ background-transparency-percent 6
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ scrollback-unlimited true
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

# Nautilus
gsettings set org.gnome.nautilus.window-state sidebar-width 180
gsettings set org.gnome.nautilus.window-state start-with-sidebar true
gsettings set org.gnome.nautilus.window-state start-with-location-bar true
gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
gsettings set org.gnome.nautilus.preferences sort-directories-first true
gsettings set org.gnome.nautilus.preferences show-hidden-files true
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.list-view use-tree-view true
gsettings set org.gnome.nautilus.list-view default-zoom-level 'smaller'

# File Chooser
gsettings set org.gtk.Settings.FileChooser clock-format '24h'
gsettings set org.gtk.Settings.FileChooser show-size-column true
gsettings set org.gtk.Settings.FileChooser show-hidden true
gsettings set org.gtk.Settings.FileChooser sort-order 'ascending'

# Gedit
gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor auto-indent true
gsettings set org.gnome.gedit.preferences.editor insert-spaces true
gsettings set org.gnome.gedit.preferences.editor tabs-size 4
gsettings set org.gnome.gedit.preferences.editor bracket-matching true
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor display-overview-map true

# Calculator
gsettings set org.gnome.calculator button-mode 'keyboard'
