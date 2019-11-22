# Run this on Ubuntu with customized gnome

echo "Running gnome-vanilla.sh"

echo "Restoring vanilla gnome environment..."
sudo apt -y install gnome-session
sudo update-alternatives --set gdm3.css /usr/share/gnome-shell/theme/gnome-shell.css
# Log in and choose "GNOME" or "GNOME on Xorg" instead of "Ubuntu" for session
