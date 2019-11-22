# #!/bin/bash

echo "Running core-fedora.sh"

echo "Initial update..."
sudo dnf update -y

echo "Installing core packages..."
packages=(
    "bash-completion"
    "vim"
    "tmux"
    "tree"
    # "colordiff"

    "git"
    "python3-pip"

    "htop"
    "jnettop"
    "iotop"

    "sshfs"
    "openvpn"
    "curl"
    "httpie"

    "cowsay"
    "fortune-mod"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo dnf install -y $selected_packages

echo "Installing pip packages..."
sudo pip3 install --upgrade pip
sudo pip3 install --upgrade ipython virtualenv

# Configure

echo "Backing up home directory's original configs..."
# sudo cp -r /home/`whoami`{,.bak}  # Warning, this should be used in fresh install with minimal home directory

echo "Configuring python..."
ipython profile create
cp /tmp/firstboot/linux-config/ipython_config.py ~/.ipython/profile_default/
cat /tmp/firstboot/linux-config/ipython_config.py | tee -a ~/.ipython/profile_default/ipython_config.py
cp /tmp/firstboot/linux-config/.py_autovenv ~/

echo "Configuring bash/shell..."
cp /tmp/firstboot/linux-config/.bash* ~/
sudo cp /tmp/firstboot/foxsay/rayting.cow /usr/share/cowsay/cows/
sudo rm /usr/share/games/fortunes/{men-women,zippy,ascii-art,ethnic}*
# bash /tmp/firstboot/fortune/build.sh  # Create and install custom fortunes
sudo cp /tmp/firstboot/fortune/hugs* /usr/share/games/fortunes/  # Workaround for fortune's build.sh

# echo "Configuring vim..."
# vim config/themeing is disabled by default
# cp /tmp/firstboot/linux-config/.vimrc ~/
# mkdir -p ~/.vim/colors
# cp /tmp/firstboot/molokai/molokai.vim ~/.vim/colors

echo "Copying over other dotfiles..."
cp /tmp/firstboot/linux-config/.gitconfig ~/
cp /tmp/firstboot/linux-config/.tmux.conf ~/

# No longer using case insensitive bash completion
# cat /tmp/firstboot/linux-config/inputrc | sudo -E tee -a /etc/inputrc > /dev/null
