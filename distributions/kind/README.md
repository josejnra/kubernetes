# Kind

Install kind by following the instructions described on this [link](https://kind.sigs.k8s.io/docs/user/quick-start/).

## Create cluster
```bash
kind create cluster --name kind-cluster
```

## Create cluster with multiple nodes
```bash
kind create cluster
```

## Create cluster from config file
```bash
kind create cluster --name cluster --config config.yaml
```

## Delete cluster
```bash
kind delete clusters kind-cluster
```
