#!/bin/bash

sudo dnf install dnf-plugins-core distribution-gpg-keys-copr
sudo dnf copr enable heliocastro/hack-fonts
sudo dnf install hack-fonts

# Alternatively, git clone and copy to fonts directory
