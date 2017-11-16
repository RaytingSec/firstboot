#!/bin/bash

# Theme
printf "[Settings]\ngtk-application-prefer-dark-theme=1\n" >> ~/.config/gtk-3.0/settings.ini
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Grey-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Arc'
gsettings set org.gnome.shell.extensions.user-theme name 'Arc-Grey-Dark'

# Shell
gsettings set org.gnome.desktop.interface monospace-font-name 'Hack 9'
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-date true
# gsettings set org.gnome.desktop.background picture-uri 'file://'$HOME'/Pictures/Wallpapers/background.png'
# gsettings set org.gnome.desktop.screensaver picture-uri 'file://'$HOME'/Pictures/Wallpapers/lockscreen.jpg'
gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'sublime_text.desktop', 'gnome-terminal.desktop', 'org.gnome.Nautilus.desktop']"

# Window manager
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

# Input
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 14

# Terminal
default_uuid="b1dcc9dd-5262-4d8d-a863-c897e6d979b9"
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ $KEY
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ default-size-columns 120
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ default-size-rows 40
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ foreground-color 'rgb(255,255,255)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ background-color 'rgb(0,0,0)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-theme-transparency false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ background-transparency-percent 6
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ scrollback-unlimited true
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

# Nautilus
gsettings set org.gnome.nautilus.list-view default-zoom-level 'smaller'
gsettings set org.gnome.nautilus.list-view use-tree-view true
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
gsettings set org.gnome.nautilus.preferences enable-interactive-search false
gsettings set org.gnome.nautilus.preferences show-hidden-files true
gsettings set org.gnome.nautilus.preferences sort-directories-first true
gsettings set org.gnome.nautilus.window-state sidebar-width 180
gsettings set org.gnome.nautilus.window-state start-with-location-bar true
gsettings set org.gnome.nautilus.window-state start-with-sidebar true

# File Chooser
gsettings set org.gtk.Settings.FileChooser clock-format '24h'
gsettings set org.gtk.Settings.FileChooser show-hidden true
gsettings set org.gtk.Settings.FileChooser show-size-column true
gsettings set org.gtk.Settings.FileChooser sort-directories-first true
gsettings set org.gtk.Settings.FileChooser sort-order 'ascending'

# Gedit
gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor auto-indent true
gsettings set org.gnome.gedit.preferences.editor insert-spaces true
gsettings set org.gnome.gedit.preferences.editor tabs-size 4
gsettings set org.gnome.gedit.preferences.editor bracket-matching true
gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
gsettings set org.gnome.gedit.preferences.editor display-overview-map true
gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'

# Calculator
gsettings set org.gnome.calculator button-mode 'keyboard'
