# #!/bin/bash

sudo apt update
sudo apt upgrade -y
packages=(
    "bash-completion"
    "vim"
    "tmux"
    "byobu"
    "tree"
    "colordiff"

    # Debian family:
    # "software-properties-common"
    # "ppa-purge"
    "git"
    "python3-pip"

    "htop"
    "jnettop"
    "iotop"

    "sshfs"
    "openvpn"
    "whois"
    "curl"
    "httpie"

    "cowsay"
    # Debian family:
    # "fortune"
    # "fortunes"
    # "fortunes-debian-hints"
    # "fortunes-ubuntu-server"
    # Fedora family:
    "fortune-mod"
)
selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
sudo apt install -y $selected_packages

# Python
sudo -H pip3 install --upgrade pip
sudo -H pip3 install --upgrade ipython virtualenv

ipython profile create
cp /tmp/configs/linux-config/ipython_config.py ~/.ipython/profile_default/
cp /tmp/configs/linux-config/.py_autovenv ~/

# Configure
cp /tmp/configs/linux-config/.bash* ~/
sudo cp /tmp/configs/foxsay/rayting.cow /usr/share/cowsay/cows/
sudo rm /usr/share/games/fortunes/{men-women,zippy,ascii-art,ethnic}*

cp /tmp/configs/linux-config/.vimrc ~/
mkdir -p ~/.vim/colors
cp /tmp/configs/molokai/molokai.vim ~/.vim/colors

cp /tmp/configs/linux-config/.gitconfig ~/
cp /tmp/configs/linux-config/.tmux.conf ~/

cat /tmp/configs/linux-config/inputrc | sudo -E tee -a /etc/inputrc > /dev/null

bash /tmp/configs/fortunes/build.sh  # Create and install custom fortunes
