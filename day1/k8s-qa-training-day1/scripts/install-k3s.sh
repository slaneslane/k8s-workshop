#!/usr/bin/env bash
set -euo pipefail

K3S_VERSION="${K3S_VERSION:-v1.30.0+k3s1}"

echo "Installing k3s version: ${K3S_VERSION}"

curl -sfL https://get.k3s.io | \
  INSTALL_K3S_VERSION="${K3S_VERSION}" \
  sh -

echo
echo "k3s installed."
sudo systemctl status k3s --no-pager || true
