#!/bin/bash

# Extensions
# https://extensions.gnome.org/extension/277/impatience/
# https://extensions.gnome.org/extension/307/dash-to-dock/
# https://extensions.gnome.org/extension/352/middle-click-to-close-in-overview/
# https://extensions.gnome.org/extension/495/topicons/
# https://extensions.gnome.org/extension/302/windowoverlay-icons/

# dconf dump /org/gnome/shell/extensions/
ext_path="/org/gnome/shell/extensions"

# ext_name="clipboard-indicator"
# dconf write $ext_path/$ext_name/cache-disable true
# dconf write $ext_path/$ext_name/enable-keybindings false
# dconf write $ext_path/$ext_name/notify-on-copy false
# dconf write $ext_path/$ext_name/preview-size 40

ext_name="windowoverlay-icons"
dconf write $ext_path/$ext_name/icon-size 64
dconf write $ext_path/$ext_name/icon-size-relative false
dconf write $ext_path/$ext_name/icon-vertical-alignment "'middle'"
dconf write $ext_path/$ext_name/icon-opacity-blur 192
dconf write $ext_path/$ext_name/background-alpha 0
dconf write $ext_path/$ext_name/icon-opacity-focus 64
dconf write $ext_path/$ext_name/icon-horizontal-alignment "'middle'"
dconf write $ext_path/$ext_name/background-color "'#bfff40004000'"

ext_name="net/gfxmonk/impatience"
dconf write $ext_path/$ext_name/speed-factor 0.75

ext_name="dash-to-dock"
dconf write $ext_path/$ext_name/apply-custom-theme false
dconf write $ext_path/$ext_name/autohide true
dconf write $ext_path/$ext_name/background-opacity 0.69999999999999996
dconf write $ext_path/$ext_name/click-action "'cycle-windows'"
dconf write $ext_path/$ext_name/custom-background-color false
dconf write $ext_path/$ext_name/custom-theme-customize-running-dots true
dconf write $ext_path/$ext_name/custom-theme-running-dots true
dconf write $ext_path/$ext_name/custom-theme-running-dots-border-color "'#ffffff'"
dconf write $ext_path/$ext_name/custom-theme-running-dots-border-width 0
dconf write $ext_path/$ext_name/custom-theme-running-dots-color "'#0993d9'"
dconf write $ext_path/$ext_name/custom-theme-shrink true
dconf write $ext_path/$ext_name/dash-max-icon-size 48
dconf write $ext_path/$ext_name/dock-fixed false
dconf write $ext_path/$ext_name/dock-position "'LEFT'"
dconf write $ext_path/$ext_name/extend-height false
dconf write $ext_path/$ext_name/force-straight-corner false
dconf write $ext_path/$ext_name/height-fraction 1.0
dconf write $ext_path/$ext_name/intellihide-mode "'ALL_WINDOWS'"
dconf write $ext_path/$ext_name/isolate-workspaces false
dconf write $ext_path/$ext_name/middle-click-action "'quit'"
dconf write $ext_path/$ext_name/multi-monitor false
dconf write $ext_path/$ext_name/opaque-background true
dconf write $ext_path/$ext_name/preferred-monitor 0
dconf write $ext_path/$ext_name/pressure-threshold 50.0
dconf write $ext_path/$ext_name/require-pressure-to-show true
dconf write $ext_path/$ext_name/running-indicator-dominant-color false
dconf write $ext_path/$ext_name/running-indicator-style "'SEGMENTED'"
dconf write $ext_path/$ext_name/scroll-action "'switch-workspace'"
dconf write $ext_path/$ext_name/shift-click-action "'launch'"
dconf write $ext_path/$ext_name/shift-middle-click-action "'launch'"
dconf write $ext_path/$ext_name/show-favorites true
dconf write $ext_path/$ext_name/show-running true
dconf write $ext_path/$ext_name/show-show-apps-button false
dconf write $ext_path/$ext_name/transparency-mode "'FIXED'"
dconf write $ext_path/$ext_name/unity-backlit-items false

ext_name="topicons"
dconf write $ext_path/$ext_name/icon-spacing 12
dconf write $ext_path/$ext_name/tray-pos "'right'"
dconf write $ext_path/$ext_name/icon-saturation 0.0
dconf write $ext_path/$ext_name/tray-order 6

# dconf write /org/gnome/shell/enabled-extensions "['alternate-tab@gnome-shell-extensions.gcampax.github.com', 'battery-percentage@nohales.org', 'dash-to-dock@micxgx.gmail.com', 'windowoverlay-icons@sustmidown.centrum.cz', 'user-theme@gnome-shell-extensions.gcampax.github.com','impatience@gfxmonk.net', 'drive-menu@gnome-shell-extensions.gcampax.github.com', 'TopIcons@phocean.net']"

sudo dconf update
