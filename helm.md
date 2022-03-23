# Helm

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

## Dry Run
```bash
$ helm install --debug --dry-run my-chart-release ./mychart
```

## Install
```bash
$ helm install my-app-release ./helm-chart
```

## Rollback
```bash
$ helm rollback my-app-release 1
```

## Uninstall
```bash
$ helm uninstall my-app-release
```
