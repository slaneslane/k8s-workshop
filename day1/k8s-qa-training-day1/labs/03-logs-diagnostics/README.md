# Lab 03 — Logi i diagnostyka aplikacji

Cel: przećwiczyć podstawowy workflow diagnostyczny na działających przykładach.

## 1. Nginx

```bash
kubectl apply -f nginx-deployment.yaml
kubectl apply -f nginx-service.yaml
kubectl get pods
kubectl get svc
```

Port-forward:

```bash
kubectl port-forward svc/qa-nginx 8080:80
```

W drugim terminalu:

```bash
curl http://localhost:8080
curl http://localhost:8080/not-found
```

Logi:

```bash
kubectl logs deployment/qa-nginx
kubectl logs -f deployment/qa-nginx
```

## 2. Logger

```bash
kubectl apply -f logger-deployment.yaml
kubectl get pods
kubectl logs deployment/qa-logger
kubectl logs -f deployment/qa-logger
```

## 3. Describe i events

```bash
kubectl describe pod <pod-name>
kubectl get events --sort-by=.metadata.creationTimestamp
```

## 4. Exec

```bash
kubectl exec -it <pod-name> -- sh
```

W kontenerze:

```sh
hostname
env
exit
```

## 5. Sprzątanie

```bash
kubectl delete -f logger-deployment.yaml
kubectl delete -f nginx-service.yaml
kubectl delete -f nginx-deployment.yaml
```
