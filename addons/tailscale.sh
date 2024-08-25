# If you want to trust curl-pipe-bash
# curl -fsSL https://tailscale.com/install.sh | sh

# Install
sudo dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo
sudo dnf install -y tailscale

# Configure
sudo systemctl enable --now tailscaled
# sudo tailscale set --operator=

# Use
tailscale up --accept-routes
# AuthN with the link provided
# tailscale ip -4
