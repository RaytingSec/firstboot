# Configure tmux

# Patch powerline fonts

cd ~/
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
mkdir -p mv ~/.local/share/fonts/
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/

wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Install packages

sudo dnf install tmux xclip  # xclip or xsel are dependencies to copy to system clipboard from tmux

# Configure

# Todo: steps to create .tmux.conf and .tmux.conf.local
