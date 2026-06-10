# Lab 01 — kubectl, CLI → YAML i vi

Cel: zobaczyć, jak komendy `kubectl` można zamienić w manifesty YAML.

## 1. Pod z komendy

```bash
kubectl run qa-web --image=nginx:1.27
kubectl get pods
kubectl describe pod qa-web
```

Sprzątanie:

```bash
kubectl delete pod qa-web
```

## 2. Generowanie YAML z komendy

```bash
kubectl run qa-web \
  --image=nginx:1.27 \
  --dry-run=client -o yaml > pod.yaml
```

## 3. Wklejanie YAML do vi

```bash
vi pod.yaml
```

W `vi`:

```vim
:set paste
i
# wklejamy manifest
Esc
:wq
```

## 4. Apply z YAML

```bash
kubectl apply -f pod.yaml
kubectl get pods
```

## 5. Deployment i Service z dry-run

```bash
kubectl create deployment qa-web \
  --image=nginx:1.27 \
  --dry-run=client -o yaml > deployment.yaml

kubectl expose deployment qa-web \
  --port=80 \
  --target-port=80 \
  --dry-run=client -o yaml > service.yaml
```

## 6. Sprzątanie

```bash
kubectl delete -f service.yaml --ignore-not-found=true
kubectl delete -f deployment.yaml --ignore-not-found=true
kubectl delete -f pod.yaml --ignore-not-found=true
```
