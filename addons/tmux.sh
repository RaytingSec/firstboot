# Configure tmux

# Patch powerline fonts

cd ~/
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
mkdir -p ~/.local/share/fonts/
mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/

wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.config/fontconfig/conf.d/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Install packages

sudo dnf install -y tmux xclip  # xclip or xsel are dependencies to copy to system clipboard from tmux

# Dependencies

# Resolve missing dependency with "This configuration requires perl Time::HiRes"
# https://serverfault.com/questions/583479/installing-perl-time-hires-on-rhel6-2-gives-perl-dependency-error
sudo dnf install -y perl-Time-HiRes

# Configure

cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
cp /tmp/init/linux-config/.tmux.conf.local ~/
