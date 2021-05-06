# Kubernetes


## Minikube
First things first, install minikube running the commands defined at this [link](https://minikube.sigs.k8s.io/docs/start/).

### Create cluster with multiple nodes
```bash
$ minikube start --nodes 2 -p multinode-cluster
```

### Increase the default memory limit (requires a restart):
```bash
$ minikube config set memory 16384
```

### Create a second cluster running an older Kubernetes release:
```bash
$ minikube start -p aged --kubernetes-version=v1.16.1
```

## Kubectl

### List pods with detailed informetion
```bash
$ kubectl get pods -o wide
```

### Port forwarding
```bash
$ kubectl port-forward service/hello-minikube 7080:8080
```
