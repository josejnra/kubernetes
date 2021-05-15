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
Or just another cluster:
```bash
$ minikube start -p cluster2
```

### LoadBalancer Service type
In order to expose a service using the LoadBalancer type in minikube we got create a tunnel, by running:
```bash
$ minikube tunnel
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

## Helm

A _Chart_ is a Helm package. It contains all of the resource definitions necessary to run an application, tool, or service inside of a Kubernetes cluster. Think of it like the Kubernetes equivalent of a Homebrew formula, an Apt dpkg, or a Yum RPM file.

A _Release_ is an instance of a chart running in a Kubernetes cluster. One chart can often be installed many times into the same cluster. And each time it is installed, a new _release_ is created. Consider a MySQL chart. If you want two databases running in your cluster, you can install that chart twice. Each one will have its own _release_, which will in turn have its own _release name_.

Helm installs _charts_ into Kubernetes, creating a new _release_ for each installation. And to find new charts, you can search Helm chart _repositories_.

Creating a chart:

```txt
For example, 'helm create foo' will create a directory structure that looks
something like this:

    foo/
    ├── .helmignore   # Contains patterns to ignore when packaging Helm charts.
    ├── Chart.yaml    # Information about your chart
    ├── values.yaml   # The default values for your templates
    ├── charts/       # Charts that this chart depends on
    └── templates/    # The template files
        └── tests/    # The test files
```

### Dry Run
```bash
$ helm install --debug --dry-run my-chart-release ./mychart
```

### Prometheus
```bash
$ helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
$ helm install prometheus--name-local prometheus-community/prometheus
```

### Kafka Confluent
```bash
helm repo add confluentinc https://confluentinc.github.io/cp-helm-charts/   #(1)
helm repo update    #(2)
helm install confluentinc/cp-helm-charts --name my-confluent --version 0.6.0    #(3)
```


## References
- [Running Flask on Kubernetes](https://testdriven.io/blog/running-flask-on-kubernetes/)
- [Kubernetes API](https://kubernetes.io/docs/reference/kubernetes-api/)
- [API Conventions](https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata)
