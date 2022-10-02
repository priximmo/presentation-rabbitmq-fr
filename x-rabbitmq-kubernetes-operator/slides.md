%title: RABBITMQ
%author: xavki


# RABBITMQ : Kubernetes Operator (cluster)


helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
kubectl create ns rabbitmq
helm install rabbitmq-operator -n rabbitmq bitnami/rabbitmq-cluster-operator


https://www.rabbitmq.com/kubernetes/operator/kubectl-plugin.html
https://github.com/rabbitmq/cluster-operator/tree/main/docs/examples


https://www.rabbitmq.com/kubernetes/operator/using-operator.html
