# Sprzątanie po labach

## Najprostsze sprzątanie

```bash
kubectl delete -f .
```

## Usuwanie konkretnych obiektów

```bash
kubectl delete pod qa-web --ignore-not-found=true
kubectl delete deployment qa-web --ignore-not-found=true
kubectl delete service qa-web --ignore-not-found=true
```

## Usuwanie namespace z labu końcowego

```bash
kubectl delete namespace qa-demo --ignore-not-found=true
```

## Globalny cleanup

Z katalogu głównego repo:

```bash
./scripts/cleanup-all.sh
```
