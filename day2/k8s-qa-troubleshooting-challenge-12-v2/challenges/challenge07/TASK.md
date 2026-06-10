# challenge07

## Namespace

```text
qa-challenge-07
```

## Service

```text
web-07
```

## Cel

Aplikacja ma odpowiedzieć przez:

```bash
kubectl port-forward -n qa-challenge-07 svc/web-07 8080:80
curl http://localhost:8080
```

## Start

```bash
./scripts/start-challenge.sh challenge07
```

## Diagnostyka

```bash
watch -n2 "kubectl get pods -n qa-challenge-07 -o wide"

kubectl get pods -n qa-challenge-07
kubectl describe pod <pod-name> -n qa-challenge-07
kubectl logs <pod-name> -n qa-challenge-07
kubectl logs <pod-name> -n qa-challenge-07 --previous
kubectl get svc -n qa-challenge-07
kubectl describe svc web-07 -n qa-challenge-07
kubectl get endpoints -n qa-challenge-07
kubectl get events -n qa-challenge-07 --sort-by=.metadata.creationTimestamp
```



## Cleanup

```bash
./scripts/cleanup-challenge.sh challenge07
```
