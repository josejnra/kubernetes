# Kubernetes

## Distributions

- [minikube](distributions/minikube/README.md)
- [kind](distributions/kind/README.md)

## Kubectl

### Generate deployment yaml
```shell
kubectl create deployment my_deployment --image=busybox --dry-run=client --output=yaml
```

### List pods with detailed informetion
```shell
kubectl get pods -o wide
```

### Port forwarding
```shell
kubectl port-forward service/hello-minikube 7080:8080
```

### Deployment rollback

First of all, check history by running:
```shell
kubectl rollout history deployment.apps/my-app-release-app-deployment
```

In order to see detail on a specific revision:
```shell
kubectl rollout history deployment.apps/my-app-release-app-deployment --revision=1
```

Then, if you want to undo the current rollout and rollback to the previous revision: 
```shell
kubectl rollout undo deployment.apps/my-app-release-app-deployment
```

Alternatively, rollback to a specific revision:
```shell
kubectl rollout undo deployment.apps/my-app-release-app-deployment --to-revision=1
```

## Helm

[Read this doc.](helm.md)

## Prometheus

[Read this doc.](prometheus.md)


## Tools
- [Lens](https://k8slens.dev/): an Electron-based desktop application that runs on Windows, Mac and Linux. It can connect to a local K8s Cluster and you can also add a custom configuration by copying/pasting the kube configuration.
- [Octant](https://octant.dev/): is a browser-based UI aimed at application developers giving them visibility into how their application is running.
- [Kubevious](https://kubevious.io/): is open-source software that provides a usable and highly graphical interface for Kubernetes. Kubevious renders all configurations relevant to the application in one place.
- [Kubelive](https://www.npmjs.com/package/kubelive): is a terminal-based UI using Node.js.
- [K9s](https://k9scli.io/): provides a terminal UI to interact with your Kubernetes clusters.
- [Stern](https://github.com/stern/stern)


## References
- [Running Flask on Kubernetes](https://testdriven.io/blog/running-flask-on-kubernetes/)
- [Kubernetes API](https://kubernetes.io/docs/reference/kubernetes-api/)
- [API Conventions](https://github.com/kubernetes/community/blob/master/contributors/devel/sig-architecture/api-conventions.md#metadata)
- [Tools](https://williamlam.com/2020/04/useful-interactive-terminal-and-graphical-ui-tools-for-kubernetes.html)
