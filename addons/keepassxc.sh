sudo dnf install -y keepassxc

# Apply fix for wayland
cp /usr/share/applications/org.keepassxc.KeePassXC.desktop ~/.local/share/applications/

# Append to exec line: -platform xcb
find='Exec=keepassxc %f'
append='-platform xcb'
replace="${find} ${append}"
sed -i.orig "s/${find}/${replace}/g" ~/.local/share/applications/org.keepassxc.KeePassXC.desktop

echo 'Flag should be appended to Exec, -platform xcb'
grep -n -E "^Exec=" ~/.local/share/applications/org.keepassxc.KeePassXC.desktop
