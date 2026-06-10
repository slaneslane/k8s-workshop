# Przydatne komendy kubectl

## Obiekty

```bash
kubectl get pods
kubectl get pods -o wide
kubectl get deployments
kubectl get svc
kubectl get all
```

## Szczegóły

```bash
kubectl describe pod <pod-name>
kubectl describe deployment <deployment-name>
kubectl describe svc <service-name>
```

## Logi

```bash
kubectl logs <pod-name>
kubectl logs deployment/<deployment-name>
kubectl logs -f <pod-name>
```

## Exec

```bash
kubectl exec -it <pod-name> -- sh
kubectl exec -it <pod-name> -- bash
```

## Namespace

```bash
kubectl get ns
kubectl get pods -n <namespace>
kubectl config set-context --current --namespace=<namespace>
```

## Port-forward

```bash
kubectl port-forward svc/<service-name> 8080:80
curl http://localhost:8080
```

## Events

```bash
kubectl get events
kubectl get events --sort-by=.metadata.creationTimestamp
```

## YAML

```bash
kubectl get deployment <name> -o yaml
kubectl create deployment <name> --image=nginx --dry-run=client -o yaml
```
