# Get the latest release from https://github.com/mozilla/geckodriver/releases
latest_release=$(curl -L https://api.github.com/repos/mozilla/geckodriver/releases/latest | grep -oE 'mozilla/geckodriver/releases/download/(.)+-linux64.tar.gz')
latest_release=$(echo "$latest_release" | tr -d '"')
latest_release_url="https://github.com/${latest_release}"
wget -qO- $latest_release_url | tar -xz
sudo mv geckodriver /usr/local/bin/
sudo chown root:root /usr/local/bin/geckodriver
