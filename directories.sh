#!/bin/bash

cd ~/
dir=./data

# User libraries
user_libs=(
    Documents
    Downloads
    Music
    Pictures
    Videos
)
for lib in "${user_libs[@]}"; do
    # Use existing dir, or move current one to $dir
    if [[ -d $dir/$lib ]]; then
        rm -r ~/$lib
    else
        mv ~/$lib $dir
    fi
    ln -s $dir/$lib ~/$lib
done

# Torrents
mkdir -p $dir/torrent/down
mkdir -p $dir/torrent/fin
mkdir -p $dir/torrent/srcdown
mkdir -p $dir/torrent/srcfin
mkdir -p $dir/torrent/srcload

# Symlinks
ln -s $dir/Dropbox ~/Dropbox
ln -s ./Dropbox/Documents/SJSU/Courses ~/courses

ln -s $dir/Code ~/code
ln -s ./code/Scripts/Bash ~/bin
ln -s ./code/Scripts/Python ~/py
ln -s ./code/vegas ~/vegas

ln -s $dir/vm ~/vmware
ln -s $dir/dev ~/dev

ln -s ./code/cryptopals ~/crypto
ln -s ./code/stockfighter ~/stock
