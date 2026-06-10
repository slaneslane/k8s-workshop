# Lab 02 — Pod, Deployment i Service

Cel: uruchomić aplikację, wystawić ją przez Service i sprawdzić dostęp przez `port-forward`.

## 1. Pod

```bash
kubectl apply -f pod.yaml
kubectl get pods
kubectl describe pod qa-web
```

Następnie usuń Poda, bo dalej Deployment będzie używał tej samej nazwy aplikacji:

```bash
kubectl delete -f pod.yaml
```

## 2. Deployment

```bash
kubectl apply -f deployment.yaml
kubectl get deployments
kubectl get pods
```

## 3. Skalowanie

```bash
kubectl scale deployment qa-web --replicas=3
kubectl get pods -o wide
```

## 4. Service

```bash
kubectl apply -f service.yaml
kubectl get svc
kubectl describe svc qa-web
```

## 5. Dostęp przez port-forward

```bash
kubectl port-forward svc/qa-web 8080:80
```

W drugim terminalu:

```bash
curl http://localhost:8080
```

## 6. Pod management

Wybierz jednego Poda i usuń go:

```bash
kubectl get pods
kubectl delete pod <pod-name>
kubectl get pods -w
```

Deployment utworzy nowego Poda.

## 7. Sprzątanie

```bash
kubectl delete -f service.yaml
kubectl delete -f deployment.yaml
```
