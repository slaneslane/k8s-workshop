# challenge01

## Namespace

```text
qa-challenge-01
```

## Service

```text
web-01
```

## Cel

Aplikacja ma odpowiedzieć przez:

```bash
kubectl port-forward -n qa-challenge-01 svc/web-01 8080:80
curl http://localhost:8080
```

## Start

```bash
./scripts/start-challenge.sh challenge01
```

## Diagnostyka

```bash
watch -n2 "kubectl get pods -n qa-challenge-01 -o wide"

kubectl get pods -n qa-challenge-01
kubectl describe pod <pod-name> -n qa-challenge-01
kubectl logs <pod-name> -n qa-challenge-01
kubectl logs <pod-name> -n qa-challenge-01 --previous
kubectl get svc -n qa-challenge-01
kubectl describe svc web-01 -n qa-challenge-01
kubectl get endpoints -n qa-challenge-01
kubectl get events -n qa-challenge-01 --sort-by=.metadata.creationTimestamp
```



## Cleanup

```bash
./scripts/cleanup-challenge.sh challenge01
```
