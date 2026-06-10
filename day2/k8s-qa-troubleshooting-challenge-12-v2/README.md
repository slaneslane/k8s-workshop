# Lab 12 — Troubleshooting Challenge

Finałowy warsztat dnia 2.

Każda para dostaje ten sam zestaw zadań.  
W katalogach nie ma nazw problemów — problem trzeba znaleźć samodzielnie.

## Cel każdego zadania

Doprowadzić aplikację do działania tak, aby po `port-forward` odpowiedziała:

```bash
curl http://localhost:8080
```

## Zasady

- Nie naprawiamy na ślepo.
- Najpierw diagnozujemy i zbieramy dowody.
- Można używać `kubectl`, `k9s`, logów, `describe`, eventów i endpointów.
- Można używać `kubectl edit`, żeby poprawić zasoby w klastrze.
- Po rozwiązaniu zadania sprzątamy środowisko i przechodzimy do kolejnego.

## Dostępne zadania

```text
challenge01
challenge02
challenge03
challenge04
challenge05
challenge06
challenge07
challenge08
```

## Start zadania

Przykład:

```bash
./scripts/start-challenge.sh challenge01
```

## Cleanup zadania

```bash
./scripts/cleanup-challenge.sh challenge01
```

## Cleanup całości

```bash
./scripts/cleanup-all.sh
```

## Komendy, których oczekujemy

```bash
kubectl get pods -n <namespace>
kubectl describe pod <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace>
kubectl logs <pod-name> -n <namespace> --previous
kubectl get svc -n <namespace>
kubectl describe svc <service-name> -n <namespace>
kubectl get endpoints -n <namespace>
kubectl get events -n <namespace> --sort-by=.metadata.creationTimestamp
kubectl port-forward -n <namespace> svc/<service-name> 8080:80
```

## Obserwacja zmian

```bash
watch -n2 "kubectl get pods -n <namespace> -o wide"
watch -n2 "kubectl get svc,endpoints -n <namespace>"
```
