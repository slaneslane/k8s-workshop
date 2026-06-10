# Lab 00 — Instalacja k3s

Cel: zainstalować lokalny, jednowęzłowy klaster Kubernetes oparty o k3s i skonfigurować `kubectl`.

## 1. Instalacja k3s

Z katalogu głównego repo:

```bash
./scripts/install-k3s.sh
```

Albo ręcznie:

```bash
curl -sfL https://get.k3s.io | \
  INSTALL_K3S_VERSION=v1.30.0+k3s1 \
  sh -
```

## 2. Kubeconfig

```bash
./scripts/setup-kubeconfig.sh
```

Albo ręcznie:

```bash
mkdir -p ~/.kube

sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chown $USER:$USER ~/.kube/config

kubectl get nodes
```

## 3. Sprawdzenie klastra

```bash
kubectl get nodes
kubectl get pods -A
```

Oczekiwany efekt: node ma status `Ready`.
