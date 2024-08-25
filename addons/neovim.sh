sudo dnf install -y neovim

echo "Configuring neovim ..."
mkdir ~/.config/nvim
cp /tmp/init/linux-config/nvim/* ~/.config/nvim/

# NeoVIM Semshi plugin will need `pynvim` to work
# Actually it seems to still be broken
pip3 install pynvim
