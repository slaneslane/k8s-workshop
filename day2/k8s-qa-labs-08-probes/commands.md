# Komendy diagnostyczne — probes

## Obserwacja

```bash
watch -n2 "kubectl get pods -n qa-probes -o wide"
watch -n2 "kubectl get svc,endpoints -n qa-probes"
```

## Podstawowa diagnostyka

```bash
kubectl get pods -n qa-probes
kubectl get pods -n qa-probes -o wide
kubectl describe pod <pod-name> -n qa-probes
kubectl logs <pod-name> -n qa-probes
kubectl get events -n qa-probes --sort-by=.metadata.creationTimestamp
```

## Service i endpoints

```bash
kubectl get svc -n qa-probes
kubectl describe svc <service-name> -n qa-probes
kubectl get endpoints -n qa-probes
```

## Naprawa

```bash
kubectl edit deployment <deployment-name> -n qa-probes
```
