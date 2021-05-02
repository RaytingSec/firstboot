#!/bin/bash

cd ~/
dir=./data

# Local data dir
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
        echo Removed $lib
    else
        mv ~/$lib $dir
        echo Moved $lib
    fi
    ln -s $dir/$lib ~/$lib
    echo Created new link to $lib
done

# Second drive data dir
# Note: this is not used since it messes with nautilus' file search
# libs=(
#     Code
# )
# second_drive=/media/sda/data/Collections
# for lib in "${libs[@]}"; do
#     # Use existing dir, or move current one to $dir
#     # if [[ -d $dir/$lib ]]; then
#     #     rm -r ~/$lib
#     #     echo Removed $lib
#     # else`
#     #     mv ~/$lib $dir
#     #     echo Moved $lib
#     # fi
#     ln -s $second_drive/$lib $dir/$lib
#     echo Created new link to $lib
# done

# Torrents
mkdir -p $dir/torrent/down
mkdir -p $dir/torrent/fin
mkdir -p $dir/torrent/srcdown
mkdir -p $dir/torrent/srcfin
mkdir -p $dir/torrent/srcload

# Symlinks
ln -s ./Documents/notes ~/notes
ln -s ./notes/technical ~/technotes

ln -s $dir/Dropbox ~/Dropbox

ln -s $dir/Code ~/code
ln -s ./code/Scripts/Bash ~/bin
ln -s ./code/Scripts/Python ~/py
ln -s ./code/vegas ~/vegas
ln -s ./code/trader ~/trader

ln -s /media/sda/data/vm ~/vmware
# ln -s $dir/dev ~/dev

# ln -s ./code/cryptopals ~/crypto
