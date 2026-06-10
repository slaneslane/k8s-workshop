# Kubernetes for QA — Dzień 1

Repozytorium zawiera laboratoria do pierwszego dnia szkolenia Kubernetes dla QA.

## Zakres

1. Instalacja k3s i konfiguracja kubeconfig
2. Podstawy `kubectl`
3. CLI → YAML
4. Pod, Deployment, Service
5. Pod management
6. Logi i diagnostyka aplikacji
7. Namespace, ConfigMap, Secret
8. Lab końcowy: nginx serwujący stronę z wartościami z ConfigMap i Secret

## Sugerowana kolejność

```bash
cd labs/00-k3s-install
cat README.md

cd ../01-kubectl-cli-yaml
cat README.md

cd ../02-pod-deployment-service
cat README.md

cd ../03-logs-diagnostics
cat README.md

cd ../04-namespace-configmap-secret-nginx
cat README.md
```

## Przydatne sprawdzenie środowiska

```bash
./scripts/verify-env.sh
```

## Sprzątanie po wszystkich labach

```bash
./scripts/cleanup-all.sh
```
