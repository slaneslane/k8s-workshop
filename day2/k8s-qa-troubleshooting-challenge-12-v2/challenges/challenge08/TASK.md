# challenge08

## Cel

Aplikacja ma odpowiedzieć przez:

```bash
curl http://localhost:8080
```

W tym zadaniu najpierw znajdź, gdzie zostały utworzone zasoby.

## Start

```bash
./scripts/start-challenge.sh challenge08
```

## Diagnostyka

```bash
kubectl get pods -A
kubectl get svc -A
kubectl get endpoints -A
kubectl describe pod <pod-name> -n <namespace>
kubectl describe svc <service-name> -n <namespace>
kubectl get events -A --sort-by=.metadata.creationTimestamp
```

## Test

Po naprawie użyj:

```bash
kubectl port-forward -n <namespace> svc/<service-name> 8080:80
curl http://localhost:8080
```

## Cleanup

```bash
./scripts/cleanup-challenge.sh challenge08
```
