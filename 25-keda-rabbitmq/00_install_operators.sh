#!/bin/bash

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add kedacore https://kedacore.github.io/charts
helm repo add benthos https://benthosdev.github.io/benthos-helm-chart/
hrlm repo udpate
helm install rmq-operator -n rabbitmq bitnami/rabbitmq-cluster-operator
