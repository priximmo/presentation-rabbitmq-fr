%title: RABBITMQ
%author: xavki


# RABBITMQ : Monitoring - Prometheus


https://www.rabbitmq.com/prometheus.html

<br>

* installation du plugin prometheus

```
rabbitmq-plugins list | grep prometheus
rabbitmq-plugins enable rabbitmq_prometheus
```

--------------------------------------------------------------------------

# RABBITMQ : Monitoring - Prometheus

<br>

* test de la route metrics

```
curl -s localhost:15692/metrics | grep rabbitmq
```

--------------------------------------------------------------------------

# RABBITMQ : Monitoring - Prometheus

<br>

* installation de prometheus

```
sudo apt-get install -y prometheus
```

--------------------------------------------------------------------------

# RABBITMQ : Monitoring - Prometheus

<br>

* ajout du scrape pour rabbitmq

```
global:
  scrape_interval:     5s 
  evaluation_interval: 5s 
rule_files:
scrape_configs:
  - job_name: rabbit_exporter
    static_configs:
      - targets: 
        - rmq1:15692
...
```

--------------------------------------------------------------------------

# RABBITMQ : Monitoring - Prometheus

<br>

* dashboard grafana

https://grafana.com/grafana/dashboards/10991-rabbitmq-overview/

--------------------------------------------------------------------------

# RABBITMQ : Monitoring - Prometheus

<br>

* autre exporter

```
wget https://github.com/kbudde/rabbitmq_exporter/
releases/download/v1.0.0-RC19/
rabbitmq_exporter_1.0.0-RC19_linux_amd64.tar.gz

tar xzvf rabbitmq_exporter_1.0.0-RC19_linux_amd64.tar.gz
sudo mv rabbitmq_exporter /usr/local/bin/
sudo chmod +x /usr/local/bin/rabbitmq_exporter
rabbitmq_exporter --config-file config.json
```

--------------------------------------------------------------------------

# RABBITMQ : Monitoring - Prometheus

<br>

* règles - préparation

```
rule_files:
  - rules/*.rules
alerting:
  alertmanagers:
  - static_configs:
    - targets:
      - localhost:9093
```

--------------------------------------------------------------------------

# RABBITMQ : Monitoring - Prometheus

<br>

* règles - exemple

```
groups:
- name: rabbitmq
  rules:
  - alert: rabbitmqDown
    expr: count(rabbitmq_build_info) <3
    for: 20s
    labels:
      severity: critical
    annotations:
      summary: "{{ $labels.instance }} abnormal server number"
```

https://awesome-prometheus-alerts.grep.to/rules.html

