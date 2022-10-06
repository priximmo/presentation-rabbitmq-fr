%title: RABBITMQ
%author: xavki


# RABBITMQ : Kubernetes operator - Cluster


helm repo add bitnami https://charts.bitnami.com/bitnami
helm install rmq-operator -n rabbitmq bitnami/rabbitmq-cluster-operator
