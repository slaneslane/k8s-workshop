# challenge04

## Namespace

```text
qa-challenge-04
```

## Service

```text
web-04
```

## Cel

Aplikacja ma odpowiedzieć przez:

```bash
kubectl port-forward -n qa-challenge-04 svc/web-04 8080:80
curl http://localhost:8080
```

## Start

```bash
./scripts/start-challenge.sh challenge04
```

## Diagnostyka

```bash
watch -n2 "kubectl get pods -n qa-challenge-04 -o wide"

kubectl get pods -n qa-challenge-04
kubectl describe pod <pod-name> -n qa-challenge-04
kubectl logs <pod-name> -n qa-challenge-04
kubectl logs <pod-name> -n qa-challenge-04 --previous
kubectl get svc -n qa-challenge-04
kubectl describe svc web-04 -n qa-challenge-04
kubectl get endpoints -n qa-challenge-04
kubectl get events -n qa-challenge-04 --sort-by=.metadata.creationTimestamp
```



## Cleanup

```bash
./scripts/cleanup-challenge.sh challenge04
```
