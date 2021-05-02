#!/bin/bash

# Packages
# sudo apt install gnome-sushi gnome-clocks
sudo dnf install gnome-extensions-app

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
#gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
#gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic true
#gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 5000

# Touchpad
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll false
# gsettings set org.gnome.desktop.peripherals.touchpad speed 0.15

# Wallpaper
# gsettings set org.gnome.desktop.background picture-uri 'file://'$HOME'/Pictures/Wallpapers/background.png'
# gsettings set org.gnome.desktop.screensaver picture-uri 'file://'$HOME'/Pictures/Wallpapers/lockscreen.jpg'

# Dock
#gsettings set org.gnome.shell favorite-apps "['telegramdesktop.desktop', 'slack.desktop', 'google-chrome.desktop', 'sublime_text.desktop', 'vmware-workstation.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop', 'org.keepassxc.KeePassXC.desktop']"

# Guake
# Not sure which settings I changed from default, so comment out for now
# gsettings set guake.general use-default-font true
# gsettings set guake.general window-width 100
# gsettings set guake.general open-tab-cwd true
# gsettings set guake.general save-tabs-when-changed false
# gsettings set guake.general use-trayicon true
# gsettings set guake.general window-refocus false
# gsettings set guake.general window-vertical-displacement 0
# gsettings set guake.general display-n -1
# gsettings set guake.general custom-command-file '~/.config/guake/custom_command.json'
# gsettings set guake.general window-valignment 0
# gsettings set guake.general use-audible-bell true
# gsettings set guake.general use-vte-titles true
# gsettings set guake.general workspace-specific-tab-sets false
# gsettings set guake.general mouse-display false
# gsettings set guake.general quick-open-command-line 'gedit %(file_path)s'
# gsettings set guake.general use-scrollbar true
# gsettings set guake.general window-losefocus false
# gsettings set guake.general history-size 1000
# gsettings set guake.general infinite-history false
# gsettings set guake.general default-shell ''
# gsettings set guake.general gtk-prefer-dark-theme true
# gsettings set guake.general gtk-theme-name 'Adwaita-dark'
# gsettings set guake.general quick-open-in-current-terminal false
# gsettings set guake.general tab-close-buttons false
# gsettings set guake.general max-tab-name-length 100
# gsettings set guake.general debug-mode false
# gsettings set guake.general window-halignment 0
# gsettings set guake.general use-login-shell false
# gsettings set guake.general restore-tabs-notify true
# gsettings set guake.general startup-script ''
# gsettings set guake.general focus-if-open true
# gsettings set guake.general start-at-login true
# gsettings set guake.general set-window-title false
# gsettings set guake.general quick-open-enable false
# gsettings set guake.general start-fullscreen false
# gsettings set guake.general tab-ontop false
# gsettings set guake.general prompt-on-close-tab 0
# gsettings set guake.general toolbar-visible-in-fullscreen true
# gsettings set guake.general use-popup true
# gsettings set guake.general window-tabbar false
# gsettings set guake.general scroll-keystroke true
# gsettings set guake.general prompt-on-quit true
# gsettings set guake.general restore-tabs-startup true
# gsettings set guake.general window-ontop true
# gsettings set guake.general window-horizontal-displacement 0
# gsettings set guake.general compat-delete 'delete-sequence'
# gsettings set guake.general word-chars '-A-Za-z0-9,./?%&#:_~'
# gsettings set guake.general scroll-output false
# gsettings set guake.general abbreviate-tab-names false
# gsettings set guake.general compat-backspace 'ascii-delete'
# gsettings set guake.general window-height 100
# gsettings set guake.style.background transparency 92
# gsettings set guake.keybindings.global show-hide 'F12'
# gsettings set guake.keybindings.global show-focus ''
# gsettings set guake.style cursor-shape 0
# gsettings set guake.style cursor-blink-mode 0
# gsettings set guake.style.font allow-bold true
# gsettings set guake.style.font palette-name 'Tango'
# gsettings set guake.style.font bold-is-bright false
# gsettings set guake.style.font style 'Hack 10'
# guake.style.font palette '#000000000000:#cccc00000000:#4e4e9a9a0606:#c4c4a0a00000:#34346565a4a4:#757550507b7b:#060698209a9a:#d3d3d7d7cfcf:#555557575353:#efef29292929:#8a8ae2e23434:#fcfce9e94f4f:#72729f9fcfcf:#adad7f7fa8a8:#3434e2e2e2e2:#eeeeeeeeecegsettings set c:#ffffffffffff:#000000000000'
# gsettings set guake.keybindings.local switch-tab3 '<Control>F3'
# gsettings set guake.keybindings.local zoom-out '<Control>minus'
# gsettings set guake.keybindings.local close-tab '<Control><Shift>w'
# gsettings set guake.keybindings.local switch-tab9 '<Control>F9'
# gsettings set guake.keybindings.local increase-height '<Control>Down'
# gsettings set guake.keybindings.local close-terminal '<Super>x'
# gsettings set guake.keybindings.local move-terminal-split-up ''
# gsettings set guake.keybindings.local focus-terminal-up '<Super><Shift>Up'
# gsettings set guake.keybindings.local split-tab-vertical '<Super>less'
# gsettings set guake.keybindings.local move-terminal-split-left ''
# gsettings set guake.keybindings.local previous-tab '<Control>Page_Up'
# gsettings set guake.keybindings.local rename-current-tab '<Control><Shift>R'
# gsettings set guake.keybindings.local move-tab-right '<Control><Shift>Page_Down'
# gsettings set guake.keybindings.local toggle-fullscreen 'F11'
# gsettings set guake.keybindings.local switch-tab10 '<Control>F10'
# gsettings set guake.keybindings.local focus-terminal-left '<Super><Shift>Left'
# gsettings set guake.keybindings.local split-tab-horizontal '<Super>minus'
# gsettings set guake.keybindings.local switch-tab5 '<Control>F5'
# gsettings set guake.keybindings.local next-tab '<Control>Page_Down'
# gsettings set guake.keybindings.local switch-tab4 '<Control>F4'
# gsettings set guake.keybindings.local toggle-hide-on-lose-focus '<Control>F1'
# gsettings set guake.keybindings.local clipboard-paste '<Control><Shift>v'
# gsettings set guake.keybindings.local search-terminal '<Control><Shift>f'
# gsettings set guake.keybindings.local increase-transparency '<Control><Shift>Up'
# gsettings set guake.keybindings.local move-terminal-split-down ''
# gsettings set guake.keybindings.local focus-terminal-right '<Super><Shift>Right'
# gsettings set guake.keybindings.local switch-tab-last '<Control>F12'
# gsettings set guake.keybindings.local new-tab-home '<Control><Shift>h'
# gsettings set guake.keybindings.local zoom-in-alt '<Control>equal'
# gsettings set guake.keybindings.local switch-tab1 '<Control>F1'
# gsettings set guake.keybindings.local focus-terminal-down '<Super><Shift>Down'
# gsettings set guake.keybindings.local decrease-height '<Control>Up'
# gsettings set guake.keybindings.local switch-tab6 '<Control>F6'
# gsettings set guake.keybindings.local switch-tab7 '<Control>F7'
# gsettings set guake.keybindings.local zoom-in '<Control>plus'
# gsettings set guake.keybindings.local clipboard-copy '<Control><Shift>c'
# gsettings set guake.keybindings.local search-on-web '<Control><Shift>l'
# gsettings set guake.keybindings.local quit '<Control><Shift>q'
# gsettings set guake.keybindings.local switch-tab2 '<Control>F2'
# gsettings set guake.keybindings.local toggle-transparency '<Control><Alt>T'
# gsettings set guake.keybindings.local reset-terminal ''
# gsettings set guake.keybindings.local move-terminal-split-right ''
# gsettings set guake.keybindings.local new-tab '<Control><Shift>t'
# gsettings set guake.keybindings.local decrease-transparency '<Control><Shift>Down'
# gsettings set guake.keybindings.local move-tab-left '<Control><Shift>Page_Up'
# gsettings set guake.keybindings.local switch-tab8 '<Control>F8'
# gsettings set guake.hooks show ''
