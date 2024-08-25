#!/bin/bash

sudo dnf install -y \
    gnome-tweaks \
    gnome-power-manager \
    baobab \
    gnome-screenshot

# Backup
gsettings list-recursively > ~/"${date -I}_gsettings_orig"
dconf dump / > ~/"${date -I}_dconf_orig"

# Theme
# printf "[Settings]\ngtk-application-prefer-dark-theme=1\n" >> ~/.config/gtk-3.0/settings.ini  # No longer used
# >3.28 theme
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Adwaita'
gsettings set org.gnome.desktop.interface icon-theme 'Adwaita'

# Shell
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-weekday true

gsettings set org.gnome.shell favorite-apps "['firefox.desktop', 'sublime_text.desktop', 'gnome-terminal.desktop', 'org.gnome.Nautilus.desktop']"

# Search
# Significantly speed up searching by disabling extraneous search providers
gsettings set org.gnome.desktop.search-providers disable-external false
# gsettings set org.gnome.desktop.search-providers disabled "['org.gnome.Contacts.desktop', 'org.gnome.Nautilus.desktop', 'org.gnome.Boxes.desktop', 'org.gnome.Photos.desktop', 'org.gnome.Software.desktop', 'org.gnome.Calculator.desktop', 'org.gnome.Calendar.desktop', 'org.gnome.clocks.desktop', 'org.gnome.Characters.desktop', 'org.gnome.Terminal.desktop', 'firefox.desktop']"


# Window manager
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

# Input
# gsettings set org.gnome.desktop.peripherals.keyboard numlock-state true  # doesn't do anything :(
gsettings set org.gnome.desktop.peripherals.keyboard delay 250
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 25  # 40x per second
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'adaptive'
gsettings set org.gnome.desktop.peripherals.pointingstick accel-profile 'adaptive'
gsettings set org.gnome.desktop.peripherals.touchpad accel-profile 'adaptive'

# Key bindings
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Shift><Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"

# Shortcuts
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/']"
# Terminal shortcut
# Tested against both fedora and debian
# probably overwrites existing keybindings
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/binding "'<Primary><Alt>t'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/command "'gnome-terminal'"
dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/name "'Terminal'"
# gnome-screenshot doesn't seem to support wayland so this is broken
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/binding "'<Shift>Print'"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/command "'gnome-screenshot --area'"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/name "'Screenshot: area'"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/binding "'<Shift><Control>Print'"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/command "'gnome-screenshot --area --clipboard'"
# dconf write /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/name "'Screenshot: area and clipboard'"

# Terminal
# default_uuid="b1dcc9dd-5262-4d8d-a863-c897e6d979b9"
default_uuid=$(gsettings get org.gnome.Terminal.ProfilesList default)
default_uuid="${default_uuid//\'}"  # Remove quotes
# Format:
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ $KEY
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ default-size-columns 120
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ default-size-rows 40
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ foreground-color 'rgb(255,255,255)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ background-color 'rgb(0,0,0)'
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-theme-colors false
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-theme-transparency false
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ use-transparent-background true
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ background-transparency-percent 15
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ scrollback-unlimited true
# Set color palette
# gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ palette "['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(78,154,6)', 'rgb(196,160,0)', 'rgb(52,101,164)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(138,226,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']"  # Tango
gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$default_uuid/ palette "['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(78,154,6)', 'rgb(207,176,39)', 'rgb(67,131,213)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(138,226,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']"  # User custom based on Tango
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

# Nautilus
# gsettings set org.gnome.nautilus.list-view default-zoom-level 'smaller'  # Invalid in >3.28
gsettings set org.gnome.nautilus.list-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.list-view use-tree-view true
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
# gsettings set org.gnome.nautilus.preferences default-sort-order 'type'
# gsettings set org.gnome.nautilus.preferences enable-interactive-search false  # Invalid in >3.28
# gsettings set org.gnome.nautilus.preferences show-hidden-files true  # Invalid in >3.28
# gsettings set org.gnome.nautilus.preferences sort-directories-first true  # Invalid in >3.28
# gsettings set org.gnome.nautilus.window-state sidebar-width 180
# gsettings set org.gnome.nautilus.window-state start-with-location-bar true
# gsettings set org.gnome.nautilus.window-state start-with-sidebar true
# gsettings set org.gnome.nautilus.window-state use-experimental-views true  # Location in 3.28
# gsettings set org.gnome.nautilus.preferences use-experimental-views true  # Location in 3.30
# Experimental views breaks stuff

# File Chooser
gsettings set org.gtk.Settings.FileChooser clock-format '24h'
gsettings set org.gtk.Settings.FileChooser show-hidden true
gsettings set org.gtk.Settings.FileChooser show-size-column true
gsettings set org.gtk.Settings.FileChooser sort-directories-first true
gsettings set org.gtk.Settings.FileChooser sort-order 'ascending'
gsettings set org.gtk.gtk4.Settings.FileChooser clock-format '24h'
gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true
gsettings set org.gtk.gtk4.Settings.FileChooser show-size-column true
gsettings set org.gtk.gtk4.Settings.FileChooser sort-directories-first true
gsettings set org.gtk.gtk4.Settings.FileChooser sort-order 'ascending'

# Gedit
# Gedit is now dead
# gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
# gsettings set org.gnome.gedit.preferences.editor auto-indent true
# # gsettings set org.gnome.gedit.preferences.editor insert-spaces true
# gsettings set org.gnome.gedit.preferences.editor tabs-size 4
# gsettings set org.gnome.gedit.preferences.editor bracket-matching true
# gsettings set org.gnome.gedit.preferences.editor highlight-current-line true
# gsettings set org.gnome.gedit.preferences.editor display-overview-map true
# gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'

# Calculator
gsettings set org.gnome.calculator button-mode 'advanced'
