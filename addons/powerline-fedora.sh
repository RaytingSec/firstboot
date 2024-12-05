#!/bin/bash
# Install and configure powerline

sudo dnf install -y powerline powerline-fonts

# tmux and vim packages appear to break things on Fedora 34
# sudo dnf install -y powerline powerline-fonts tmux-powerline vim-powerline

# Configure

mkdir -p ~/.config/powerline/
cp -r /tmp/init/powerline-config/* ~/.config/powerline/

# Validate configs
powerline-lint -p ~/.config/powerline/
