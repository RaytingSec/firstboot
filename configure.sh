#!/bin/bash


# Configs

CONFIGS=$HOME/code/Linux-Config

# general configs
cp $CONFIGS/.* ~/

# vim
mkdir -p ~/.vim/colors
mv $CONFIGS/molokai.vim ~/.vim/colors

# cowsay
sudo cp $CONFIGS/rayting.cow /usr/share/cowsay/cows/

# inputrc
# printf '\nset completion-ignore-case On' | sudo -E tee /etc/inputrc > /dev/null

# sublime
CONFIGS=~/code/sublime-config
wget --directory-prefix="~/.config/sublime-text-3/Installed Packages" https://packagecontrol.io/Package%20Control.sublime-package
cp $CONFIGS/* ~/.config/sublime-text-3/Packages/User/
