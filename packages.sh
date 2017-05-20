#!/bin/bash

extra_packages=false
testing_packages=false

OPTS=`getopt -o hvseipu --long host,vm,server,extra,install,print,update -n 'packages.sh' -- "$@"`
if [ $? != 0 ] ; then echo "argument parsing failed" >&2 ; exit 1 ; fi
eval set -- "$OPTS"

host=false
vm=false
server=false
extra=false
install=false
print=false
update=false
while true; do
    case "$1" in
        -h | --host )    host=true; shift;;
        -v | --vm )      vm=true; shift;;
        -s | --server )  server=true; shift;;
        -e | --extra )   extra=true; shift;;
        -i | --install ) install=true; shift;;
        -p | --print )   print=true; shift;;
        -u | --update )  update=true; shift;;
        # -- ) shift; break ;;
        * ) break ;;
    esac
done

# Logic flow
# base
# host?
#     yes
#     no
# vm?
#     yes
# server?
#     yes (server)
#     no (dev, uses display)

# Packages

url_chrome="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
url_slack=$(curl -sS https://slack.com/downloads/instructions/linux | grep amd64 | cut -d \" -f 4)
url_sublime=$(curl -sS https://www.sublimetext.com/ | grep download | grep amd64 | cut -d \" -f 4)

packages_base=(
    # Essentials
    "vim "
    "tmux "
    "tree "
    "git "
    "colordiff "
    "software-properties-common "
    "ppa-purge "
    # Sys monitor
    "htop "
    "jnettop "
    "iotop "
    # Cowsay stuff
    "fortunes "
    "cowsay "
    # Network stuff
    "sshfs "
    "openvpn "
    "nmap "
    "curl "
)
packages_base_extra=(
    "whois "
    "atop "
    "finger "
    "hping3 "
    # Fortunes
    "fortunes-debian-hints "
    "fortunes-spam "
    "fortunes-ubuntu-server "
    # For fun
    "bsdgames "
    "bsdgames-nonfree "
)

packages_host=(
    "cpufreqinfo "
    "tlp "
    "pm-utils "
    "lm-sensors "
    "nautilus-dropbox "
    "network-manager-openvpn-gnome "
    "youtube-dl "
)
packages_host_urls=(
    $url_slack
)
packages_host_extra=(
    "banshee "
)
packages_not_host=(
    "ssh "
)

# packages_vm=(
#     "open-vm-tools-desktop "
#     "open-vm-tools-dkms "
# )

packages_server=(
    "iptstate "
    # "nginx "
)
packages_server_sql=(
    "mysql-server "
)
packages_server_torrent=(
    "transmission-cli "
    "transmission-daemon "
    "transmission-common "
)
packages_server_torrent_ppa=(
    "ppa:transmissionbt/ppa"
)

packages_gui=(
    "fonts-hack-otf "
    "simplescreenrecorder "
    "vlc "
    # Chrome dependencies
    "libappindicator1 "
    "libindicator7 "
)
packages_gui_url=(
    $url_chrome
)

packages_dev=(
    # Dev tools
    "httpie "
    "oracle-java8-installer "
    "oracle-java8-set-default "
    "python3-pip "
    # Security
    "sox "
    "libsox-fmt-mp3 "
    "radare2 "
    "scanmem "
    "hexedit "
    "nikto "
    "hydra "
    "sqlmap "
    "wireshark "
    "masscan "
    "zmap "
)
packages_dev_ppa=(
    "ppa:webupd8team/java"
)
packages_dev_url=(
    $url_sublime
)
packages_dev_pip=(
    # "pip "
    "virtualenv "
    "setuptools "
    "bs4 "
    "markdown "
    "requests "
    "crypto "
    "numpy "
    "matplotlib "
    "requests[security]"
    # keyczar
    # nacl
)
packages_dev_extra=(
    #plugins
    "icedtea-plugin "
    "icedtea-8-plugin "
    "flashplugin-installer "
    #other
    "nodejs "
    "npm "
    "node-typescript "
    "brackets "
    "sqlitebrowser "
    "gns3-gui "
    "gns3-iou "
)
packages_dev_extra_ppa=(
    "ppa:webupd8team/brackets"
    "ppa:gns3/ppa"
)

# Testing stuff
packages_testing=(
    "backuppc "
    "bacula "
    "byobu "
)

# Logic flow
# base
# host?
#     yes
#     no
# vm?
#     yes
# server?
#     yes (server)
#     no (dev, uses display)

repos=()
packages=()
packages_pip=()
urls=()

packages+=$packages_base
packages+=$packages_base_extra

echo "configuring for install..."
if $host; then
    echo "adding host packages"
    packages+=$packages_host
    packages+=$packages_host_urls
    # packages+=$packages_host_extra
else
    packages+=$packages_not_host
fi

# Done in drivers.sh
# if $vm; then
#     echo "adding vm packages"
#     packages+=$packages_vm
# fi

if $server; then
    echo "adding server packages"
    packages+=$packages_server
    # packages+=$packages_server_sql
    # packages+=$packages_server_torrent_ppa
else
    packages+=$packages_gui
    urls+=$packages_gui_url

    packages+=$packages_dev
    repos+=$packages_dev_ppa
    urls+=$packages_dev_url
    packages_pip+=$packages_dev_pip
    # packages+=$packages_dev_extra
    # packages+=$packages_dev_extra_ppa
fi

selected_repos=" "
for r in "${repos[@]}"; do
    selected_repos+="sudo add-apt-repository -y $r; "
done

selected_packages=" "
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
selected_packages="sudo apt install "$selected_packages

selected_pip="sudo -H pip3 install --upgrade pip; "
selected_pip+="sudo pip3 -H install "
for p in "${packages_pip[@]}"; do
    selected_pip+=$p" "
done

selected_urls=" "
for u in "${urls[@]}"; do
    selected_urls+="wget $u; "
done
selected_urls+="; sudo dpkg -i ./*.deb"

if $install; then
    echo "installing..."
    # eval $selected_repos
    # eval $selected_packages
    # eval $selected_pip
    # eval $selected_urls
elif $print; then
    echo "printing out installation commands..."
    echo $selected_repos
    echo $selected_packages
    echo $selected_pip
    echo $selected_urls
elif $update; then
    echo "updating existing packages..."
    echo "sudo apt update && sudo apt upgrade"
fi
