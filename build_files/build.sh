#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

wget https://github.com/nbfc-linux/nbfc-linux/releases/download/0.5.4/arch-linux-nbfc-linux-git-0.5.4-1-x86_64.pkg.tar.zst
pacman -Uy --noconfirm ./arch-linux-nbfc-linux-git-0.5.4-1-x86_64.pkg.tar.zst

systemctl enable podman.socket
