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

repos=()
packages=()
packages_pip=()
urls=()

url_chrome="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
url_slack=$(wget -O - -o /dev/null https://slack.com/downloads/instructions/linux | grep amd64 | cut -d \" -f 4)
# url_sublime=$(wget -O - -o /dev/null https://www.sublimetext.com/ | grep download | grep amd64 | cut -d \" -f 4)

# packages_base=(
packages+=(
    # Essentials
    "vim"
    "tmux"
    "byobu"
    "tree"
    "git"
    "colordiff"
    "software-properties-common"
    "ppa-purge"
    # Sys monitor
    "htop"
    "jnettop"
    "iotop"
    # Cowsay stuff
    "fortune"
    # "fortunes"
    "cowsay"
    # Network stuff
    "sshfs"
    "openvpn"
    "nmap"
    "curl"
)
# packages_base_extra=(
packages+=(
    "whois"
    "atop"
    "finger"
    "hping3"
    # Fortunes
    "fortunes-debian-hints"
    "fortunes-spam"
    "fortunes-ubuntu-server"
    # For fun
    "bsdgames"
    "bsdgames-nonfree"
)

if $host; then
    packages+=(
        "cpufrequtils"
        "tlp"
        "pm-utils"
        "lm-sensors"
        "solaar-gnome3"
        "nautilus-dropbox"
        "network-manager-openvpn-gnome"
        "youtube-dl"
    )
    urls+=(
        $url_slack
    )
else
    packages+=(
        "ssh"
    )
fi


if $server; then
    packages+=(
        "iptstate"
    )
else
    packages_gui=(
        "fonts-hack-otf"
        "simplescreenrecorder"
        "vlc"
        # Chrome dependencies
        "libappindicator1"
        "libindicator7"
        # Theme
        # sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > sudo tee /etc/apt/sources.list.d/arc-theme.list"
        # wget -nv http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key -O Release.key
        # sudo apt-key add - < Release.key
        # "arc-theme"
    )
    urls+=(
        $url_chrome
    )
fi

packages+=(
    # Dev tools
    "httpie"
    "python3-pip"
    # Security
    "sox"
    "libsox-fmt-mp3"
    "radare2"
    "scanmem"
    "hexedit"
    "nikto"
    "hydra"
    "sqlmap"
    "wireshark"
    "masscan"
    "zmap"
)
packages_pip+=(
    # "pip"
    "virtualenv"
    "setuptools"
    "bs4"
    "markdown"
    "requests"
    "crypto"
    "numpy"
    # "matplotlib"
    "requests[security]"
    # keyczar
    # nacl
)
urls+=(
    $url_sublime
)

selected_repos=""
for r in "${repos[@]}"; do
    selected_repos+="sudo add-apt-repository -y $r; "
done

selected_packages=""
for p in "${packages[@]}"; do
    selected_packages+=$p" "
done
selected_packages="sudo apt install -y "$selected_packages

selected_pip="sudo pip3 install --upgrade pip; "
selected_pip+="sudo -H pip3 install "
for p in "${packages_pip[@]}"; do
    selected_pip+=$p" "
done

selected_urls=""
for u in "${urls[@]}"; do
    selected_urls+="wget $u; "
done
selected_urls+="sudo dpkg -i ./*.deb && sudo apt install -f"

if $install; then
    echo "installing..."
    eval $selected_repos
    eval $selected_packages
    eval $selected_pip
    eval $selected_urls
    # Sublime
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
elif $print; then
    echo "printing out installation commands..."
    echo $selected_repos
    echo $selected_packages
    echo $selected_pip
    echo $selected_urls
elif $update; then
    echo "updating existing packages..."
    # echo "sudo apt update && sudo apt upgrade"
    sudo apt update && sudo apt upgrade -y
fi
