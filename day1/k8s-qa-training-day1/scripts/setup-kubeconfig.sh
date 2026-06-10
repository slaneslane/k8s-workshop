#!/usr/bin/env bash
set -euo pipefail

mkdir -p "${HOME}/.kube"

sudo cp /etc/rancher/k3s/k3s.yaml "${HOME}/.kube/config"
sudo chown "${USER}:${USER}" "${HOME}/.kube/config"

if ! grep -q "KUBECONFIG" "${HOME}/.bashrc"; then
  echo 'export KUBECONFIG=$HOME/.kube/config' >> "${HOME}/.bashrc"
fi

export KUBECONFIG="${HOME}/.kube/config"

echo "Kubeconfig prepared:"
kubectl config current-context || true

echo
kubectl get nodes
