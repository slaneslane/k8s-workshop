# Troubleshooting commands

## Podstawy

```bash
kubectl get pods -n <namespace>
kubectl get pods -n <namespace> -o wide
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace> --previous
```

## Eventy

```bash
kubectl get events -n <namespace>
kubectl get events -n <namespace> --sort-by=.metadata.creationTimestamp
```

## Service i endpointy

```bash
kubectl get svc -n <namespace>
kubectl describe svc <service-name> -n <namespace>
kubectl get endpoints -n <namespace>
```

## Port-forward i test

```bash
kubectl port-forward -n <namespace> svc/<service-name> 8080:80
curl http://localhost:8080
```

## Szukanie zasobów

```bash
kubectl get all -A
kubectl get pods -A
kubectl get svc -A
kubectl get endpoints -A
```

## Edycja

```bash
kubectl edit deployment <deployment-name> -n <namespace>
kubectl edit service <service-name> -n <namespace>
```

W vim:

```vim
:set paste
i
# poprawka
Esc
:wq
```
