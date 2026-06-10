# Lab 04 — Namespace, ConfigMap, Secret i nginx

Cel: uruchomić aplikację nginx w osobnym namespace. Strona będzie wygenerowana z wartości pochodzących z ConfigMap i Secret.

> Uwaga: w prawdziwej aplikacji nie wyświetlamy sekretów użytkownikowi. Tutaj robimy to celowo, żeby zobaczyć mechanizm działania Secret.

## 1. Utworzenie namespace

```bash
kubectl apply -f namespace.yaml
kubectl get ns
```

Ustawienie namespace jako domyślnego:

```bash
kubectl config set-context --current --namespace=qa-demo
```

## 2. ConfigMap i Secret

```bash
kubectl apply -f configmap.yaml
kubectl apply -f secret.yaml

kubectl get configmap
kubectl get secret
```

Podejrzenie Secret:

```bash
kubectl get secret page-secret -o yaml
```

Dekodowanie wartości Secret:

```bash
echo "$(kubectl get secret page-secret \
  -o jsonpath='{.data.SECRET_MESSAGE}' | base64 -d)"
```

## 3. Deployment i Service

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Sprawdzenie:

```bash
kubectl get pods
kubectl get svc
kubectl describe pod <pod-name>
```

## 4. Dostęp do strony

```bash
kubectl port-forward svc/nginx-secret-demo 8080:80
```

W drugim terminalu:

```bash
curl http://localhost:8080
```

W przeglądarce:

```text
http://localhost:8080
```

## 5. Diagnostyka

```bash
kubectl logs deployment/nginx-secret-demo
kubectl describe pod <pod-name>
kubectl get events --sort-by=.metadata.creationTimestamp
```

## 6. Sprzątanie

```bash
kubectl delete namespace qa-demo
```
