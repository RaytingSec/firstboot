# RPM method
chrome_rpm_url="https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm"
sudo dnf install -y $chrome_rpm_url

# DNF method
sudo dnf install -y fedora-workstation-repositories
sudo dnf config-manager --set-enabled google-chrome
sudo dnf install -y google-chrome-stable
