# Komendy diagnostyczne

```bash
kubectl get pods
kubectl get pods -o wide
kubectl describe pod <pod-name>
kubectl logs <pod-name>
kubectl logs deployment/<deployment-name>
kubectl logs -f <pod-name>
kubectl exec -it <pod-name> -- sh
kubectl get events --sort-by=.metadata.creationTimestamp
kubectl get svc
kubectl get endpoints
```
