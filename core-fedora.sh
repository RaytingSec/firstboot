# #!/bin/bash

echo "Running core-fedora.sh"

echo "Initial update..."
sudo dnf update -y

echo "Installing core packages..."
packages=(
    "bash-completion"
    "vim"
    "neovim"
    "tmux"
    "tree"
    # "colordiff"

    "git"
    "python3-pip"

    "btop"
    "bpytop"
    "htop"
    # "jnettop"  # Package appears to have been removed
    "iotop"

    "sshfs"
    # "openvpn"
    "curl"
    # "httpie"

    "cowsay"
    "fortune-mod"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo dnf install -y $selected_packages

# echo "Installing pip packages..."
# sudo pip3 install --upgrade pip
# sudo pip3 install --upgrade ipython virtualenv

# Configure

echo "Backing up home directory's original configs..."
sudo cp -r /home/`whoami`{,.bak}  # This should be used in fresh install with minimal home directory

echo "Configuring bash/shell..."
mkdir ~/.bashrc.d/
cp /tmp/init/linux-config/.bashrc.d/* ~/.bashrc.d/

echo "Configuring python..."
cp /tmp/init/linux-config/.py_autovenv ~/.bashrc.d/

echo "Configuring cowsay..."
sudo cp /tmp/init/foxsay/rayting.cow /usr/share/cowsay/cows/
# sudo rm /usr/share/games/fortunes/{zippy,ascii-art,ethnic}*  # Some of these files are no longer part of the package
# bash /tmp/init/fortune/build.sh  # Create and install custom fortunes
# sudo cp /tmp/init/fortune/hugs* /usr/share/games/fortunes/  # Workaround for fortune's build.sh

echo "Configuring neovim ..."
mkdir ~/.config/nvim
cp /tmp/init/linux-config/nvim/* ~/.config/nvim/

echo "Copying over other dotfiles..."
cp /tmp/init/linux-config/.gitconfig ~/
cp /tmp/init/linux-config/.tmux.conf ~/

cat /tmp/init/linux-config/inputrc | sudo -E tee -a /etc/inputrc
