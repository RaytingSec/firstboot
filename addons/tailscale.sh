# If you want to trust curl-pipe-bash
# curl -fsSL https://tailscale.com/install.sh | sh

# Install
sudo dnf config-manager addrepo --from-repofile="https://pkgs.tailscale.com/stable/fedora/tailscale.repo"
sudo dnf install -y tailscale

# Configure
sudo systemctl enable --now tailscaled
sudo tailscale set --operator=$USER
tailscale set --accept-routes=true
tailscale set --accept-dns=false
tailscale set --exit-node-allow-lan-access=true

# Use
tailscale up
# AuthN with the link provided
tailscale status
tailscale ip -4
