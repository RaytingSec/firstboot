#!/bin/bash

# User extensions not accessible with gsettings so dconf instead
# Warning! Untested script!
# Commented lines are broken or unnecessary

# dconf dump /org/gnome/shell/extensions/

ext_path="/org/gnome/shell/extensions"

ext_name="dynamic-panel-transparency"
dconf write $ext_path/$ext_name/theme-opacity 241
dconf write $ext_path/$ext_name/enable-opacity false
dconf write $ext_path/$ext_name/remove-panel-styling false
dconf write $ext_path/$ext_name/transition-with-overview false
dconf write $ext_path/$ext_name/maximized-opacity 255
dconf write $ext_path/$ext_name/force-theme-update false
dconf write $ext_path/$ext_name/enable-background-color false
# dconf write $ext_path/$ext_name/panel-theme-color (44, 44, 44)
dconf write $ext_path/$ext_name/hide-corners true
# dconf write $ext_path/$ext_name/app-overrides @as []
dconf write $ext_path/$ext_name/current-user-theme 'Arc-Grey-Dark'
# dconf write $ext_path/$ext_name/text-shadow-position (0, 2, 5)
dconf write $ext_path/$ext_name/transition-type 1
dconf write $ext_path/$ext_name/transition-speed 400
dconf write $ext_path/$ext_name/text-shadow true
dconf write $ext_path/$ext_name/icon-shadow true
# dconf write $ext_path/$ext_name/icon-shadow-position (0, 2, 5)
dconf write $ext_path/$ext_name/trigger-apps @as []
dconf write $ext_path/$ext_name/force-animation false

ext_name="user-theme"
dconf write $ext_path/$ext_name/name 'Arc-Grey-Dark'

ext_name="mediaplayer"
dconf write $ext_path/$ext_name/position true
dconf write $ext_path/$ext_name/status-size 300

ext_name="clipboard-indicator"
dconf write $ext_path/$ext_name/cache-disable true
dconf write $ext_path/$ext_name/enable-keybindings false
dconf write $ext_path/$ext_name/notify-on-copy false
dconf write $ext_path/$ext_name/preview-size 40

ext_name="windowoverlay-icons"
dconf write $ext_path/$ext_name/icon-size 48
dconf write $ext_path/$ext_name/icon-size-relative false
dconf write $ext_path/$ext_name/icon-vertical-alignment 'middle'
dconf write $ext_path/$ext_name/icon-opacity-blur 192
dconf write $ext_path/$ext_name/background-alpha 0
dconf write $ext_path/$ext_name/icon-opacity-focus 64
dconf write $ext_path/$ext_name/icon-horizontal-alignment 'middle'
dconf write $ext_path/$ext_name/background-color '#bfff40004000'

ext_name="freon"
dconf write $ext_path/$ext_name/show-decimal-value false
dconf write $ext_path/$ext_name/hot-sensors "['Core 0', 'fan1']"
dconf write $ext_path/$ext_name/update-time 5

ext_name="net/gfxmonk/impatience"
dconf write $ext_path/$ext_name/speed-factor 0.75

ext_name="dash-to-dock"
dconf write $ext_path/$ext_name/preferred-monitor 0
dconf write $ext_path/$ext_name/shift-click-action 'launch'
dconf write $ext_path/$ext_name/shift-middle-click-action 'launch'
dconf write $ext_path/$ext_name/custom-theme-running-dots-color '#00aaff'
dconf write $ext_path/$ext_name/click-action 'cycle-windows'
dconf write $ext_path/$ext_name/force-straight-corner false
dconf write $ext_path/$ext_name/show-show-apps-button false
dconf write $ext_path/$ext_name/intellihide-mode 'ALL_WINDOWS'
dconf write $ext_path/$ext_name/multi-monitor false
dconf write $ext_path/$ext_name/scroll-action 'switch-workspace'
dconf write $ext_path/$ext_name/custom-theme-customize-running-dots true
dconf write $ext_path/$ext_name/apply-custom-theme false
dconf write $ext_path/$ext_name/custom-theme-running-dots true
dconf write $ext_path/$ext_name/unity-backlit-items false
dconf write $ext_path/$ext_name/dock-position 'BOTTOM'
dconf write $ext_path/$ext_name/custom-theme-shrink false
dconf write $ext_path/$ext_name/background-opacity 0.8
dconf write $ext_path/$ext_name/dash-max-icon-size 48
dconf write $ext_path/$ext_name/middle-click-action 'quit'
dconf write $ext_path/$ext_name/opaque-background true

dconf update