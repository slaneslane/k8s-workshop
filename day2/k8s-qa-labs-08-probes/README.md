# Lab 08 — Readiness Probe i Liveness Probe

Cel: każdy zespół dostaje dwa uszkodzone deploymenty i diagnozuje różnicę między `readinessProbe` a `livenessProbe`.

## Przygotowanie

```bash
kubectl apply -f 00-namespace.yaml
kubectl config set-context --current --namespace=qa-probes
```

## Podgląd zmian na żywo

```bash
watch -n2 "kubectl get pods -n qa-probes -o wide"
```

W drugim terminalu warto obserwować Service i endpointy:

```bash
watch -n2 "kubectl get svc,endpoints -n qa-probes"
```

## Zasada pracy

Dla każdego problemu:

```bash
kubectl apply -f <katalog>/deployment.yaml
kubectl apply -f <katalog>/service.yaml

kubectl get pods -n qa-probes
kubectl describe pod <pod-name> -n qa-probes
kubectl get endpoints -n qa-probes
kubectl get events -n qa-probes --sort-by=.metadata.creationTimestamp
```

Naprawa podczas labu:

```bash
kubectl edit deployment <deployment-name> -n qa-probes
```

W vim:

```vim
:set paste
i
# poprawiamy probe
Esc
:wq
```

## Sprzątanie

```bash
kubectl delete namespace qa-probes
```
