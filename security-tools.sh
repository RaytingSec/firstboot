#!/bin/bash

tools_dir=/tools

mkdir -p $tools_dir
mkdir -p $tools_dir/source
mkdir -p $tools_dir/bin

# ln -s ../amass/amass
# ln -s ../bettercap/bettercap
# ln -s ../EyeWitness/EyeWitness.py
# ln -s ../Sublist3r/sublist3r.py

# Bettercap
# https://www.bettercap.org/installation/
# https://github.com/bettercap/bettercap/releases
# sudo apt install libpcap libusb-1.0-0 libnetfilter-queue
sudo apt install libpcap0.8 libnetfilter-queue1
wget https://github.com/bettercap/bettercap/releases/download/v2.24/bettercap_linux_amd64_2.24.zip
unzip -d bettercap bettercap_linux_amd64_*.zip

# ZMAP
# https://zmap.io/
# https://github.com/zmap/zmap
sudo apt install -y zmap

# amass
# https://github.com/OWASP/Amass/releases
wget https://github.com/OWASP/Amass/releases/download/3.0.3/amass_3.0.3_linux_amd64.zip
unzip amass_*_linux_amd64.zip
mv amass_*_linux_amd64/ amass/

# burp
# https://portswigger.net/burp/communitydownload
# Installed by default on kali
# wget https://portswigger.net/burp/releases/download?product=community&version=1.7.36&type=linux
# bash burpsuite_community_linux_v1_7_36.sh
# wget https://portswigger.net/burp/releases/download?product=community&version=1.7.36&type=jar
# Just run the jar with `java -jar`

# Sublister
# https://github.com/aboul3la/Sublist3r
git clone https://github.com/aboul3la/Sublist3r
cd Sublist3r/
sudo pip install -r requirements.txt
# python setup.py

# EyeWitness
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd EyeWitness/
cd setup/
# pip2 install paramiko fuzzywuzzy selenium python-Levenshtein pyasn1 pyvirtualdisplay pytesseract
# pip2 install --upgrade paramiko selenium pyasn1
bash setup.sh
