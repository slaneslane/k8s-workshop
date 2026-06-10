# Lab 07 — ImagePullBackOff i CrashLoopBackOff

Cel: każdy zespół dostaje te same uszkodzone manifesty i diagnozuje problem.

## Przygotowanie

```bash
kubectl apply -f 00-namespace.yaml
kubectl config set-context --current --namespace=qa-troubleshooting
```

## Praca z labami

Dla każdego katalogu:

```bash
kubectl apply -f <katalog>/deployment.yaml
kubectl get pods
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl logs <pod-name> --previous
kubectl get events --sort-by=.metadata.creationTimestamp
```

## Sprzątanie

```bash
kubectl delete namespace qa-troubleshooting
```
