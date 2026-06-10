# challenge03

## Namespace

```text
qa-challenge-03
```

## Service

```text
web-03
```

## Cel

Aplikacja ma odpowiedzieć przez:

```bash
kubectl port-forward -n qa-challenge-03 svc/web-03 8080:80
curl http://localhost:8080
```

## Start

```bash
./scripts/start-challenge.sh challenge03
```

## Diagnostyka

```bash
watch -n2 "kubectl get pods -n qa-challenge-03 -o wide"

kubectl get pods -n qa-challenge-03
kubectl describe pod <pod-name> -n qa-challenge-03
kubectl logs <pod-name> -n qa-challenge-03
kubectl logs <pod-name> -n qa-challenge-03 --previous
kubectl get svc -n qa-challenge-03
kubectl describe svc web-03 -n qa-challenge-03
kubectl get endpoints -n qa-challenge-03
kubectl get events -n qa-challenge-03 --sort-by=.metadata.creationTimestamp
```



## Cleanup

```bash
./scripts/cleanup-challenge.sh challenge03
```
