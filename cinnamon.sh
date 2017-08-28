gsettings set org.cinnamon.desktop.wm.preferences mouse-button-modifier '<Super>'
gsettings set org.cinnamon.desktop.wm.preferences resize-with-right-button true

gsettings set org.nemo.preferences default-sort-order 'type'
gsettings set org.nemo.preferences sort-directories-first true
gsettings set org.nemo.preferences show-hidden-files true
gsettings set org.nemo.preferences default-folder-viewer 'list-view'

gsettings set org.cinnamon.settings-daemon.peripherals.keyboard delay 250
gsettings set org.cinnamon.settings-daemon.peripherals.keyboard repeat-interval 14

gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ default-size-columns 120
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ default-size-rows 40
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ foreground-color 'rgb(255,255,255)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ background-color 'rgb(0,0,0)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-theme-colors false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-theme-transparency false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ background-transparency-percent 30
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ scrollback-unlimited true
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

gsettings set org.gtk.Settings.FileChooser clock-format '24h'
gsettings set org.gtk.Settings.FileChooser show-size-column true
gsettings set org.gtk.Settings.FileChooser show-hidden true
gsettings set org.gtk.Settings.FileChooser sort-order 'ascending'

gsettings set org.gnome.calculator button-mode 'keyboard'

gsettings set org.cinnamon.desktop.sound ...
