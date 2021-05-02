# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4773BD5E130D1D45
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update
sudo apt install spotify-client
