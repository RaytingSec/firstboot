#!/bin/bash

# Extensions
# https://extensions.gnome.org/extension/55/media-player-indicator/
# https://extensions.gnome.org/extension/1180/freon/

ext_path="/org/gnome/shell/extensions"

ext_name="dash-to-dock"
dconf write $ext_path/$ext_name/dock-position "'BOTTOM'"

ext_name="mediaplayer"
dconf write $ext_path/$ext_name/position true
dconf write $ext_path/$ext_name/status-size 300

ext_name="freon"
dconf write $ext_path/$ext_name/show-decimal-value false
dconf write $ext_path/$ext_name/hot-sensors "['Core 0', 'fan1']"
dconf write $ext_path/$ext_name/update-time 5

# ext_name="dynamic-panel-transparency"
# dconf write $ext_path/$ext_name/theme-opacity 241
# dconf write $ext_path/$ext_name/enable-opacity false
# dconf write $ext_path/$ext_name/remove-panel-styling false
# dconf write $ext_path/$ext_name/transition-with-overview false
# dconf write $ext_path/$ext_name/maximized-opacity 255
# dconf write $ext_path/$ext_name/force-theme-update false
# dconf write $ext_path/$ext_name/enable-background-color false
# # dconf write $ext_path/$ext_name/panel-theme-color (44, 44, 44)
# dconf write $ext_path/$ext_name/hide-corners true
# # dconf write $ext_path/$ext_name/app-overrides @as []
# dconf write $ext_path/$ext_name/current-user-theme "'Arc-Grey-Dark'"
# # dconf write $ext_path/$ext_name/text-shadow-position (0, 2, 5)
# dconf write $ext_path/$ext_name/transition-type 1
# dconf write $ext_path/$ext_name/transition-speed 400
# dconf write $ext_path/$ext_name/text-shadow true
# dconf write $ext_path/$ext_name/icon-shadow true
# # dconf write $ext_path/$ext_name/icon-shadow-position (0, 2, 5)
# dconf write $ext_path/$ext_name/trigger-apps @as []
# dconf write $ext_path/$ext_name/force-animation false

dconf write /org/gnome/shell/enabled-extensions "['alternate-tab@gnome-shell-extensions.gcampax.github.com', 'battery-percentage@nohales.org', 'dash-to-dock@micxgx.gmail.com', 'freon@Veske', 'mediaplayer@patapon.info', 'clipboard-indicator@tudmotu.com', 'middleclickclose@paolo.tranquilli.gmail.com', 'remove-dropdown-arrows@mpdeimos.com', 'windowoverlay-icons@sustmidown.centrum.cz', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'impatience@gfxmonk.net', 'topIcons@adel.gadllah@gmail.com', 'drive-menu@gnome-shell-extensions.gcampax.github.com']"

sudo dconf update
