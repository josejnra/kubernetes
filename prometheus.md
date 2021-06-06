# Prometheus

Prometheus is a monitoring and alerting system for distributed systems and infrastructure.

Prometheus works well for recording any purely numeric time series.

## Prometheus is Not

- Not a long-term archival system
- Not a business intelligence reporting system
- Not a data-mining backend

Prometheus values reliability. You can always view what statistics are available about your system, even under failure conditions. If you need 100% accuracy, such as for per-request billing, Prometheus is not a good choice as the collected data will likely not be detailed and complete enough. In such a case you would be best off using some other system to collect and analyze the data for billing, and Prometheus for the rest of your monitoring.

## Components

The Prometheus ecosystem consists of multiple components, many of which are optional:

- the main Prometheus server which scrapes and stores time series data
- client libraries for instrumenting application code
- a push gateway for supporting short-lived jobs
- special-purpose exporters for services like HAProxy, StatsD, Graphite, etc.
- an alertmanager to handle alerts
- various support tools

Most Prometheus components are written in Go, making them easy to build and deploy as static binaries.

## Alternatives
- Graphite
- InfluxDB
- OpenTSDB
- Nagios
- Sensu

## Some commands
Install prometheus using Helm chart.

```bash
$ helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
$ helm install prometheus--name-local prometheus-community/prometheus
```

### Dry run
```bash
helm install my-release --dry-run .
```

## Referencies
- https://www.dropbox.com/s/0l7kxhjqjbabtb0/prometheus%20site-ops%20preso.pdf?dl=0
- https://prometheus.io/docs/introduction/overview/
