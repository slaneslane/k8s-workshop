# Środowisko szkoleniowe

Każda para pracuje na przygotowanej VM.

## Dane dostępowe

Uzupełnić przed szkoleniem:

```text
VM: k8s-lab-01 / k8s-lab-02 / ...
User: k8s
Password: ...
System: Ubuntu 24.04
```

## Sprawdzenie podstaw

```bash
whoami
hostname
pwd
```

## Sprawdzenie narzędzi

```bash
kubectl version --client
k9s version
git --version
```

## Po instalacji k3s

```bash
kubectl get nodes
kubectl get pods -A
```
