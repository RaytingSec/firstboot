# Build from source
# https://ghostty.org/docs/install/build

sudo dnf install gtk4-devel zig libadwaita-devel

cd /tmp
git clone git@github.com:ghostty-org/ghostty.git
cd ghostty
zig build -p $HOME/.local -Doptimize=ReleaseFast

# Config file: ~/.config/ghostty/config
