#!/bin/bash

OPTS=`getopt -o ltsd: --long libraries,torrents,symlinks,dir: -n 'directories.sh' -- "$@"`
if [ $? != 0 ] ; then echo "argument parsing failed" >&2 ; exit 1 ; fi
eval set -- "$OPTS"

libraries=false
torrents=false
symlinks=false
dir=""
while true; do
    case "$1" in
        -l | --libraries ) libraries=true; shift;;
        -t | --torrents )  torrents=true; shift;;
        -s | --symlinks )  symlinks=true; shift;;
        -d | --dir )  dir=$2; shift;;
        # -- ) shift; break ;;
        * ) break ;;
    esac
done

if [[ $dir == "" ]]; then
    echo "No parent directory specified! Exiting..."
    exit 1
fi

if $libraries; then
    # Relocate dirs from ~/ to $dir/
    user_libs=(
        Documents
        Downloads
        Music
        Pictures
        Videos
    )
    for lib in "${user_libs[@]}"; do
        rm -r $HOME/$lib
        ln -s $dir/$lib $HOME/$lib
    done
fi

if $torrents; then
    do stuff
    mkdir -p $dir/torrent/down
    mkdir -p $dir/torrent/fin
    mkdir -p $dir/torrent/srcdown
    mkdir -p $dir/torrent/srcfin
    mkdir -p $dir/torrent/srcload
fi

if $symlinks; then
    ln -s $dir/vm ~/vmware
    ln -s $dir/dev ~/dev
    ln -s $dir/Dropbox ~/Dropbox
    ln -s $dir/Code ~/code
    ln -s ~/code/Scripts/Bash ~/bin
    ln -s ~/code/Scripts/Python ~/py

    ln -s ~/code/cryptopals ~/crypto
    ln -s ~/code/stockfighter ~/stock

    ln -s ~/Dropbox/Documents/SJSU/Courses ~/courses
fi
