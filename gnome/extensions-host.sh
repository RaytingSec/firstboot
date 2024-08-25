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
dconf write ${ext_path}/${ext_name}/hot-sensors "['Package id 0']"
# If using Nvidia
# dconf write ${ext_path}/${ext_name}/gpu-utility "'nvidia-settings'"
# dconf write ${ext_path}/${ext_name}/hot-sensors "['Package id 0', 'NVIDIA GeForce GTX 1650 Ti with Max-Q Design', 'fan1', 'fan2']"

ext_name="caffeine"
dconf write ${ext_path}/${ext_name}/enable-fullscreen false

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
# show-icon=true  # Should be default
# Set up 3 x 2 window layout
dconf write ${ext_path}/${ext_name}/grid-sizes "'3x2,2x2'"
# Split numberpad into 3 rows:
# 789
# 456
# 123
# Top and bottom row of keypad move window to top and bottom row
# Middle row sets windows follows same locations but with windows set to full vertical height
dconf write ${ext_path}/${ext_name}/preset-resize-21 "['<Control><Alt><Super>KP_1']"
dconf write ${ext_path}/${ext_name}/preset-resize-22 "['<Control><Alt><Super>KP_2']"
dconf write ${ext_path}/${ext_name}/preset-resize-23 "['<Control><Alt><Super>KP_3']"
dconf write ${ext_path}/${ext_name}/preset-resize-24 "['<Control><Alt><Super>KP_4']"
dconf write ${ext_path}/${ext_name}/preset-resize-25 "['<Control><Alt><Super>KP_5']"
dconf write ${ext_path}/${ext_name}/preset-resize-26 "['<Control><Alt><Super>KP_6']"
dconf write ${ext_path}/${ext_name}/preset-resize-27 "['<Control><Alt><Super>KP_7']"
dconf write ${ext_path}/${ext_name}/preset-resize-28 "['<Control><Alt><Super>KP_8']"
dconf write ${ext_path}/${ext_name}/preset-resize-29 "['<Control><Alt><Super>KP_9']"
# Alternatively can use numberpad in qwerty compatible format
dconf write ${ext_path}/${ext_name}/preset-resize-21 "['<Control><Alt><Super>m']"
dconf write ${ext_path}/${ext_name}/preset-resize-22 "['<Control><Alt><Super>comma']"
dconf write ${ext_path}/${ext_name}/preset-resize-23 "['<Control><Alt><Super>period']"
dconf write ${ext_path}/${ext_name}/preset-resize-24 "['<Control><Alt><Super>j']"
dconf write ${ext_path}/${ext_name}/preset-resize-25 "['<Control><Alt><Super>k']"
dconf write ${ext_path}/${ext_name}/preset-resize-26 "['<Control><Alt><Super>l']"
dconf write ${ext_path}/${ext_name}/preset-resize-27 "['<Control><Alt><Super>u']"
dconf write ${ext_path}/${ext_name}/preset-resize-28 "['<Control><Alt><Super>i']"
dconf write ${ext_path}/${ext_name}/preset-resize-29 "['<Control><Alt><Super>o']"
dconf write ${ext_path}/${ext_name}/resize21 "'3x2 1:2 1:2'"
dconf write ${ext_path}/${ext_name}/resize22 "'3x2 2:2 2:2'"
dconf write ${ext_path}/${ext_name}/resize23 "'3x2 3:2 3:2'"
dconf write ${ext_path}/${ext_name}/resize24 "'3x2 1:1 1:2, 1:1 2:2'"
dconf write ${ext_path}/${ext_name}/resize25 "'3x2 2:1 2:2'"
dconf write ${ext_path}/${ext_name}/resize26 "'3x2 3:1 3:2, 2:1 3:2'"
dconf write ${ext_path}/${ext_name}/resize27 "'3x2 1:1 1:1'"
dconf write ${ext_path}/${ext_name}/resize28 "'3x2 2:1 2:1'"
dconf write ${ext_path}/${ext_name}/resize29 "'3x2 3:1 3:1'"

# ext_name="sound-output-device-chooser"
# dconf write ${ext_path}/${ext_name}/expand-volume-menu true
# dconf write ${ext_path}/${ext_name}/hide-menu-icons false
# dconf write ${ext_path}/${ext_name}/integrate-with-slider false
# dconf write ${ext_path}/${ext_name}/omit-device-origins false
# dconf write ${ext_path}/${ext_name}/show-profiles false

# sudo dconf update
