# Install RPM Fusion
# https://rpmfusion.org/Configuration
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Add RPM Fusion keys
# https://rpmfusion.org/keys
gpg --keyserver pgp.mit.edu --recv-keys D6841AF8
gpg --keyserver pgp.mit.edu --recv-keys D6841AF8

# Something about repository files
sudo dnf install fedora-workstation-repositories -y

# Install Nvidia drivers
# https://rpmfusion.org/Howto/NVIDIA#Current_GeForce.2FQuadro.2FTesla
sudo dnf install xorg-x11-drv-nvidia akmod-nvidia -y

# Drive encryption setup
# sudo cp configs/fstab /etc/fstab
# sudo cp configs/crypttab /etc/crypttab
# Need to get only the last line that specifies sda configs
# Keys
sudo mkdir /root/keys/
sudo cp configs/alpha.key /root/keys/
sudo chmod 400 /root/keys/alpha.key

# KeepassXC
cp configs/Database.key ~/data/
chmod 400 ~/data/Database.key

# Disable splash boot
# remove rhgb from boot options in /etc/default/grub
# https://forums.fedoraforum.org/showthread.php?272810-Remove-splash-screen
# update grub
# https://ask.fedoraproject.org/en/question/80362/how-do-i-update-grub-in-fedora-23/
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg

# New graphics setup
# https://superdanby.github.io/Blog/dealing-with-nvidia-optimus.html
# ...
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-nvidia.repo
sudo dnf install nvidia-settings kernel-devel dkms-nvidia mesa-vulkan-drivers.i686 nvidia-driver-libs.i686
sudo dnf install cuda-devel
# ...

# Spotify
# https://docs.fedoraproject.org/en-US/quick-docs/installing-spotify/
sudo dnf install -y lpf-spotify-client
# run lpf-spotify-client in application list, builds spotify
# lpf has cli program too, look into how to install spotify via cli, might be `lpf update`
