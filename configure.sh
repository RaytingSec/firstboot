#!/bin/bash


# Configs

CONFIGS=$HOME/code/Linux-Config

# general configs
cp $CONFIGS/.* ~/

# vim
mkdir -p ~/.vim/colors
mv $CONFIGS/molokai.vim ~/.vim/colors

# cowsay
sudo cp $CONFIGS/fox.cow /usr/share/cowsay/cows/

# inputrc
printf '\nset completion-ignore-case On' | sudo -E tee /etc/inputrc > /dev/null

# sublime
wget -P ~/.config/sublime-text-3/Installed\ Packages https://sublime.wbond.net/Package%20Control.sublime-package
cp $CONFIGS/sublime/* ~/.config/sublime-text-3/Packages/User/
