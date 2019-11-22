sudo pip3 install selenium

# Get the latest release from https://github.com/mozilla/geckodriver/releases
# url=https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz
wget -qO- https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz | tar -xz
sudo mv geckodriver /usr/local/bin/
sudo chown root:root /usr/local/bin/geckodriver
