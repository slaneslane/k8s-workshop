# challenge02

## Namespace

```text
qa-challenge-02
```

## Service

```text
web-02
```

## Cel

Aplikacja ma odpowiedzieć przez:

```bash
kubectl port-forward -n qa-challenge-02 svc/web-02 8080:80
curl http://localhost:8080
```

## Start

```bash
./scripts/start-challenge.sh challenge02
```

## Diagnostyka

```bash
watch -n2 "kubectl get pods -n qa-challenge-02 -o wide"

kubectl get pods -n qa-challenge-02
kubectl describe pod <pod-name> -n qa-challenge-02
kubectl logs <pod-name> -n qa-challenge-02
kubectl logs <pod-name> -n qa-challenge-02 --previous
kubectl get svc -n qa-challenge-02
kubectl describe svc web-02 -n qa-challenge-02
kubectl get endpoints -n qa-challenge-02
kubectl get events -n qa-challenge-02 --sort-by=.metadata.creationTimestamp
```



## Cleanup

```bash
./scripts/cleanup-challenge.sh challenge02
```
