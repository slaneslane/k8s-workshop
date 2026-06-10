# Rozwiązanie — bad-liveness

## Objaw

Pod restartuje się cyklicznie:

```bash
watch -n2 "kubectl get pods -n qa-probes -o wide"
```

Widać rosnącą kolumnę `RESTARTS`.

## Przyczyna

`livenessProbe` sprawdza ścieżkę `/broken`, której nginx domyślnie nie ma.

```yaml
livenessProbe:
  httpGet:
    path: /broken
    port: 80
```

Kubelet uznaje kontener za niedziałający i restartuje go.

## Naprawa przez kubectl edit

```bash
kubectl edit deployment bad-liveness -n qa-probes
```

Zmień:

```yaml
path: /broken
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
kubectl describe pod <pod-name> -n qa-probes
```

Oczekiwany efekt: liczba restartów przestaje rosnąć, a Pod pozostaje stabilny.
