# challenge06

## Namespace

```text
qa-challenge-06
```

## Service

```text
web-06
```

## Cel

Aplikacja ma odpowiedzieć przez:

```bash
kubectl port-forward -n qa-challenge-06 svc/web-06 8080:80
curl http://localhost:8080
```

## Start

```bash
./scripts/start-challenge.sh challenge06
```

## Diagnostyka

```bash
watch -n2 "kubectl get pods -n qa-challenge-06 -o wide"

kubectl get pods -n qa-challenge-06
kubectl describe pod <pod-name> -n qa-challenge-06
kubectl logs <pod-name> -n qa-challenge-06
kubectl logs <pod-name> -n qa-challenge-06 --previous
kubectl get svc -n qa-challenge-06
kubectl describe svc web-06 -n qa-challenge-06
kubectl get endpoints -n qa-challenge-06
kubectl get events -n qa-challenge-06 --sort-by=.metadata.creationTimestamp
```



## Cleanup

```bash
./scripts/cleanup-challenge.sh challenge06
```
