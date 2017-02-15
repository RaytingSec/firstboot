#!/bin/bash

DATA=/home/$USER/Data

if [[ "$1" == "--libs" ]]; then
    # Relocate dirs from ~/ to ~/Data
    USERLIBS=(
        Documents
        Downloads
        Music
        Pictures
        Videos
    )
    for DIR in "${USERLIBS[@]}"; do
        rm -r $HOME/$DIR
        ln -s $DATA/$DIR $HOME/$DIR
    done
elif [[ "$1" == "--torrents" ]]; then
    mkdir -p $DATA/Torrent/down
    mkdir -p $DATA/Torrent/fin
    mkdir -p $DATA/Torrent/srcdown
    mkdir -p $DATA/Torrent/srcfin
    mkdir -p $DATA/Torrent/srcload
elif [[ "$1" == "--symlinks" ]]; then
    # Symlinks
    ln -s $DATA/vm/ ~/vmware
    ln -s $DATA/dev ~/dev
    ln -s $DATA/Dropbox ~/Dropbox
    ln -s $DATA/Code/ ~/code
    ln -s ~/code/Scripts/Bash/ ~/bin
    ln -s ~/code/Scripts/Python ~/py

    ln -s ~/code/cryptopals ~/crypto
    ln -s ~/code/Stockfighter ~/stock

    ln -s ~/Dropbox/Documents/SJSU/Courses ~/courses
fi
