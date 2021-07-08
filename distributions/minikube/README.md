# Minikube

First things first, install minikube running the commands defined at this [link](https://minikube.sigs.k8s.io/docs/start/).

## Create cluster with multiple nodes
```bash
$ minikube start --nodes 2 -p multinode-cluster
```

## Increase the default memory limit (requires a restart):
```bash
$ minikube config set memory 16384
```

## Create a second cluster running an older Kubernetes release:
```bash
$ minikube start -p aged --kubernetes-version=v1.16.1
```
Or just another cluster:
```bash
$ minikube start -p cluster2
```

## LoadBalancer Service type
In order to expose a service using the LoadBalancer type in minikube we got create a tunnel, by running:
```bash
$ minikube tunnel
```

## NodePort Access
```bash
$ minikube service --url <service-name>
```

## Metrics Server
Before enabling metrics-server make sure to set minikube profile:
```bash
$ minikube profile list
$ minikube profile <profile-name>
```

Then:
```bash
$ minikube addons enable metrics-server
```

Now you may run:
```bash
$ kubectl top nodes
```
