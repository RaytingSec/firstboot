#!/bin/bash

# Ref:
# https://askubuntu.com/questions/78640/how-can-i-make-swf-files-be-opened-with-the-standalone-player
# http://www.joshuagranick.com/2012/04/25/how-to-install-the-standalone-flash-player-on-linux/
# https://stackoverflow.com/questions/878913/what-are-all-the-differences-between-the-flash-debug-player-and-regular-player

# Downloading

# mkdir flashplayer && cd flashplayer
# url=$(wget -qO- https://www.adobe.com/support/flashplayer/debug_downloads.html | grep "Flash Player Projector content debugger" | cut -d \" -f 2)  # URL times out with wget
url="https://fpdownload.macromedia.com/pub/flashplayer/updaters/32/flash_player_sa_linux_debug.x86_64.tar.gz"
wget $url
mkdir flashplayer
tar -xvzf $(basename $url) -C flashplayer
rm $(basename $url)

# Installation

sudo mv flashplayer /opt
sudo ln -s /opt/flashplayer/flashplayerdebugger /usr/bin/flashplayerdebugger

echo "[Desktop Entry]
Name=flashplayer
Comment=Adobe Flash Player Debugger
Type=Application
Exec=/usr/lib/flashplayer/flashplayerdebugger %U
MimeType=application/swf-flash;application/x-shockwave-flash;
Terminal=false
Categories=GTK;GNOME;AudioVideo;Player;Video;
NoDisplay=true" > flashplayerdebugger.desktop

sudo mv flashplayerdebugger.desktop /usr/share/applications/flashplayerdebugger.desktop
# sudo update-desktop-database
