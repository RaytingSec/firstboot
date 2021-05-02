#!/bin/bash

# Extensions
# https://extensions.gnome.org/extension/818/battery-percentage/
# https://extensions.gnome.org/extension/55/media-player-indicator/
# https://extensions.gnome.org/extension/946/panel-world-clock-lite/
# https://extensions.gnome.org/extension/1206/clock-override/
# https://extensions.gnome.org/extension/841/freon/
# https://extensions.gnome.org/extension/517/caffeine/
# https://extensions.gnome.org/extension/28/gtile/

# dconf dump /org/gnome/shell/extensions/
ext_path="/org/gnome/shell/extensions"

ext_name="dash-to-dock"
dconf write $ext_path/$ext_name/dock-position "'BOTTOM'"

# ext_name="mediaplayer"
# dconf write $ext_path/$ext_name/position true
# dconf write $ext_path/$ext_name/status-size 300

# ext_name="freon"
# dconf write $ext_path/$ext_name/drive-utility "'smartctl'"
# dconf write $ext_path/$ext_name/gpu-utility "'nvidia-settings'"
# dconf write $ext_path/$ext_name/hot-sensors "['fan1', '__average__']"
# dconf write $ext_path/$ext_name/position-in-panel "'right'"
# dconf write $ext_path/$ext_name/show-decimal-value false
# dconf write $ext_path/$ext_name/show-icon-on-panel true
# dconf write $ext_path/$ext_name/show-voltage true
# dconf write $ext_path/$ext_name/update-time 5

ext_name="caffeine"
dconf write $ext_path/$ext_name/enable-fullscreen false
dconf write $ext_path/$ext_name/show-notifications false
dconf write $ext_path/$ext_name/user-enabled false

ext_name="clock_override"
dconf write $ext_path/$ext_name/override-string "'%a  %b  %d  %T  %Z'"

ext_name="status-area-horizontal-spacing"
dconf write $ext_path/$ext_name/hpadding 8

# ext_name="workspaces-to-dock"
# dconf write $ext_path/$ext_name/autohide-in-fullscreen false
# dconf write $ext_path/$ext_name/background-opacity 0.69999999999999996
# dconf write $ext_path/$ext_name/center-thumbnails-on-dock true
# dconf write $ext_path/$ext_name/center-thumbnails-option 0
# dconf write $ext_path/$ext_name/customize-height true
# dconf write $ext_path/$ext_name/customize-height-option 1
# dconf write $ext_path/$ext_name/customize-thumbnail false
# dconf write $ext_path/$ext_name/customize-thumbnail-visible-width false
# dconf write $ext_path/$ext_name/dashtodock-hover false
# dconf write $ext_path/$ext_name/disable-scroll true
# dconf write $ext_path/$ext_name/dock-edge-visible false
# dconf write $ext_path/$ext_name/dock-fixed false
# dconf write $ext_path/$ext_name/dock-position "'RIGHT'"
# dconf write $ext_path/$ext_name/hide-dash true
# dconf write $ext_path/$ext_name/hide-delay 0.5
# dconf write $ext_path/$ext_name/hide-workspace-switcher-popup true
# dconf write $ext_path/$ext_name/horizontal-workspace-switching true
# dconf write $ext_path/$ext_name/intellihide false
# dconf write $ext_path/$ext_name/overview-action "'SHOW_FULL'"
# dconf write $ext_path/$ext_name/pressure-threshold 160.0
# dconf write $ext_path/$ext_name/quick-show-on-workspace-change true
# dconf write $ext_path/$ext_name/quick-show-timeout 500.0
# dconf write $ext_path/$ext_name/require-click-to-show false
# dconf write $ext_path/$ext_name/require-pressure-to-show true
# dconf write $ext_path/$ext_name/screen-edge-padding 2.0
# dconf write $ext_path/$ext_name/scroll-with-touchpad false
# dconf write $ext_path/$ext_name/show-shortcuts-panel false
# dconf write $ext_path/$ext_name/straight-corners false
# dconf write $ext_path/$ext_name/thumbnail-size 0.125
# dconf write $ext_path/$ext_name/thumbnail-visible-width 27.0
# dconf write $ext_path/$ext_name/toggle-overview true
# dconf write $ext_path/$ext_name/top-margin 0.0
# dconf write $ext_path/$ext_name/use-pressure-speed-limit false
# dconf write $ext_path/$ext_name/workspace-caption-height 22.0
# dconf write $ext_path/$ext_name/workspace-caption-items "['windowapps:false', 'spacer:true']"
# dconf write $ext_path/$ext_name/workspace-caption-menu-icon-size 20.0
# dconf write $ext_path/$ext_name/workspace-caption-position "'BOTTOM'"
# dconf write $ext_path/$ext_name/workspace-caption-taskbar-icon-size 18.0
# dconf write $ext_path/$ext_name/workspace-caption-taskbar-tooltips true
# dconf write $ext_path/$ext_name/workspace-captions true

ext_name="world-clock"
dconf write $ext_path/$ext_name/active-buttons "['KNYC', '@UTC', 'RCSS']"
dconf write $ext_path/$ext_name/button-position "'ML'"
dconf write $ext_path/$ext_name/button-position2 "'MR'"
# dconf write $ext_path/$ext_name/hide-local true
dconf write $ext_path/$ext_name/num-buttons 1
dconf write $ext_path/$ext_name/num-buttons2 1

ext_name="gtile"
dconf write $ext_path/$ext_name/dngrid-sizes "'8x6,6x4,4x4,2x2'"


# dconf write /org/gnome/shell/enabled-extensions "['dash-to-dock@micxgx.gmail.com', 'alternate-tab@gnome-shell-extensions.gcampax.github.com', 'user-theme@gnome-shell-extensions.gcampax.github.com', 'drive-menu@gnome-shell-extensions.gcampax.github.com', 'TopIcons@phocean.net', 'System_Monitor@bghome.gmail.com', 'workspace-indicator@gnome-shell-extensions.gcampax.github.com', 'apps-menu@gnome-shell-extensions.gcampax.github.com', 'freon@UshakovVasilii_Github.yahoo.com', 'mediaplayer@patapon.info', 'windowoverlay-icons@sustmidown.centrum.cz', 'middleclickclose@paolo.tranquilli.gmail.com', 'world_clock@ailin.nemui', 'world_clock_lite@ailin.nemui', 'impatience@gfxmonk.net', 'remove-dropdown-arrows@mpdeimos.com']"

# sudo dconf update
