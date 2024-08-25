# wget ...
wget --trust-server-names https://telegram.org/dl/desktop/linux
tar -xf tsetup.*.tar.xz
sudo mv Telegram /opt
sudo chown `whoami`:`whoami` /opt/Telegram
rm tsetup.*.tar.xz
/opt/Telegram/Telegram
