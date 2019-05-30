#!/bin/bash

# Extensions
# https://extensions.gnome.org/extension/818/battery-percentage/
# https://extensions.gnome.org/extension/55/media-player-indicator/
# https://extensions.gnome.org/extension/946/panel-world-clock-lite/
# https://extensions.gnome.org/extension/1206/clock-override/
# https://extensions.gnome.org/extension/841/freon/

ext_path="/org/gnome/shell/extensions"

ext_name="dash-to-dock"
dconf write $ext_path/$ext_name/dock-position "'BOTTOM'"

ext_name="mediaplayer"
dconf write $ext_path/$ext_name/position true
dconf write $ext_path/$ext_name/status-size 300

ext_name="freon"
dconf write $ext_path/$ext_name/show-decimal-value false
dconf write $ext_path/$ext_name/hot-sensors "['__average__', 'fan1']"
dconf write $ext_path/$ext_name/gpu-utility "'nvidia-settings'"
dconf write $ext_path/$ext_name/position-in-panel "'right'"
dconf write $ext_path/$ext_name/show-voltage true
dconf write $ext_path/$ext_name/update-time 5

# dconf write /org/gnome/shell/enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'alternate-tab@gnome-shell-extensions.gcampax.github.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'drive-menu@gnome-shell-extensions.gcampax.github.com', 'TopIcons@phocean.net', 'System_Monitor@bghome.gmail.com', 'workspace-indicator@gnome-shell-extensions.gcampax.github.com', 'apps-menu@gnome-shell-extensions.gcampax.github.com', 'freon@UshakovVasilii_Github.yahoo.com', 'mediaplayer@patapon.info', 'windowoverlay-icons@sustmidown.centrum.cz', 'middleclickclose@paolo.tranquilli.gmail.com', 'world_clock@ailin.nemui', 'world_clock_lite@ailin.nemui', 'impatience@gfxmonk.net', 'remove-dropdown-arrows@mpdeimos.com']"

sudo dconf update

