# challenge05

## Namespace

```text
qa-challenge-05
```

## Service

```text
web-05
```

## Cel

Aplikacja ma odpowiedzieć przez:

```bash
kubectl port-forward -n qa-challenge-05 svc/web-05 8080:80
curl http://localhost:8080
```

## Start

```bash
./scripts/start-challenge.sh challenge05
```

## Diagnostyka

```bash
watch -n2 "kubectl get pods -n qa-challenge-05 -o wide"

kubectl get pods -n qa-challenge-05
kubectl describe pod <pod-name> -n qa-challenge-05
kubectl logs <pod-name> -n qa-challenge-05
kubectl logs <pod-name> -n qa-challenge-05 --previous
kubectl get svc -n qa-challenge-05
kubectl describe svc web-05 -n qa-challenge-05
kubectl get endpoints -n qa-challenge-05
kubectl get events -n qa-challenge-05 --sort-by=.metadata.creationTimestamp
```



## Cleanup

```bash
./scripts/cleanup-challenge.sh challenge05
```
