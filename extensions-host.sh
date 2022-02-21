#!/bin/bash

# dconf dump /org/gnome/shell/extensions/

ext_path="/org/gnome/shell/extensions"

ext_name="dash-to-dock"
dconf write ${ext_path}/${ext_name}/dock-position "'BOTTOM'"
dconf write ${ext_path}/${ext_name}/apply-custom-theme true
dconf write ${ext_path}/${ext_name}/intellihide-mode "'ALL_WINDOWS'"
dconf write ${ext_path}/${ext_name}/middle-click-action "'quit'"
dconf write ${ext_path}/${ext_name}/show-show-apps-button false

ext_name="freon"
dconf write ${ext_path}/${ext_name}/gpu-utility "'nvidia-settings'"
dconf write ${ext_path}/${ext_name}/hot-sensors "['Package id 0', 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design', 'fan1', 'fan2']"
# dconf write ${ext_path}/${ext_name}/drive-utility "'smartctl'"
# dconf write ${ext_path}/${ext_name}/position-in-panel "'right'"
# dconf write ${ext_path}/${ext_name}/show-decimal-value false
# dconf write ${ext_path}/${ext_name}/show-icon-on-panel true
# dconf write ${ext_path}/${ext_name}/show-voltage true
# dconf write ${ext_path}/${ext_name}/update-time 5

ext_name="caffeine"
dconf write ${ext_path}/${ext_name}/enable-fullscreen false
dconf write ${ext_path}/${ext_name}/show-notifications false
dconf write ${ext_path}/${ext_name}/user-enabled false

# ext_name="clock_override"
# dconf write ${ext_path}/${ext_name}/override-string "'%a  %b  %d  %T  %Z'"

# ext_name="status-area-horizontal-spacing"
# dconf write ${ext_path}/${ext_name}/hpadding 8

# ext_name="world-clock"
# dconf write ${ext_path}/${ext_name}/active-buttons "['KNYC', '@UTC', 'RCSS']"
# dconf write ${ext_path}/${ext_name}/button-position "'ML'"
# dconf write ${ext_path}/${ext_name}/button-position2 "'MR'"
# # dconf write ${ext_path}/${ext_name}/hide-local true
# dconf write ${ext_path}/${ext_name}/num-buttons 1
# dconf write ${ext_path}/${ext_name}/num-buttons2 1

ext_name="gtile"
dconf write ${ext_path}/${ext_name}/grid-sizes "'3x2,4x4,2x2'"

ext_name="sound-output-device-chooser"
dconf write ${ext_path}/${ext_name}/expand-volume-menu true
dconf write ${ext_path}/${ext_name}/hide-menu-icons false
dconf write ${ext_path}/${ext_name}/integrate-with-slider false
dconf write ${ext_path}/${ext_name}/omit-device-origins false
dconf write ${ext_path}/${ext_name}/show-profiles false

# sudo dconf update
