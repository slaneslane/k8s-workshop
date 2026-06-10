# Rozwiązanie — bad-readiness

## Objaw

Pod działa, ale nie jest gotowy:

```bash
kubectl get pods -n qa-probes
```

Wynik będzie podobny do:

```text
NAME                             READY   STATUS    RESTARTS
bad-readiness-xxxxxxxxxx-yyyyy   0/1     Running   0
```

Service nie dostaje endpointu:

```bash
kubectl get endpoints -n qa-probes
```

## Przyczyna

`readinessProbe` sprawdza ścieżkę `/healthz`, której nginx domyślnie nie ma.

```yaml
readinessProbe:
  httpGet:
    path: /healthz
    port: 80
```

## Naprawa przez kubectl edit

```bash
kubectl edit deployment bad-readiness -n qa-probes
```

Zmień:

```yaml
path: /healthz
```

na:

```yaml
path: /
```

Zapisz w vim:

```vim
:wq
```

## Sprawdzenie

```bash
watch -n2 "kubectl get pods -n qa-probes -o wide"
kubectl get endpoints -n qa-probes
```

Oczekiwany efekt: Pod ma `READY 1/1`, a Service ma endpoint.
