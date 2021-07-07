# Kubernetes

## Distributions

- [minikube](distributions/minikube/README.md)
- [kind](distributions/kind/README.md)

## Kubectl

### List pods with detailed informetion
```bash
$ kubectl get pods -o wide
```

### Port forwarding
```bash
$ kubectl port-forward service/hello-minikube 7080:8080
```

### Rollback

First of all, check history by running:
```bash
$ kubectl rollout history deployment.apps/my-app-release-app-deployment
```

In order to see detail on a specific revision:
```bash
$ kubectl rollout history deployment.apps/my-app-release-app-deployment --revision=1
```

Then, if you want to undo the current rollout and rollback to the previous revision: 
```bash
$ kubectl rollout undo deployment.apps/my-app-release-app-deployment
```

Alternatively, rollback to a specific revision:
```bash
$ kubectl rollout undo deployment.apps/my-app-release-app-deployment --to-revision=1
```

## Helm

[Read this doc.](helm.md)

## Prometheus

[Read this doc.](prometheus.md)

## Kafka Confluent
```bash
helm repo add confluentinc https://confluentinc.github.io/cp-helm-charts/   #(1)
helm repo update    #(2)
helm install confluentinc/cp-helm-charts --name my-confluent --version 0.6.0    #(3)
```

## References
- [Running Flask on Kubernetes](https://testdriven.io/blog/running-flask-on-kubernetes/)
- [Kubernetes API](https://kubernetes.io/docs/reference/kubernetes-api/)
- [API Conventions](https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata)
