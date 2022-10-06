%title: RABBITMQ
%author: xavki


# RABBITMQ : Kubernetes operator - Topology


helm repo add bitnami https://charts.bitnami.com/bitnami
helm install rmq-operator -n rabbitmq bitnami/rabbitmq-cluster-operator


rabbitmq-cluster-operator
rabbitmq-messaging-topology-operator


```
NAME                              CREATED AT
bindings.rabbitmq.com             2022-10-05T18:54:35Z
exchanges.rabbitmq.com            2022-10-05T18:54:35Z
federations.rabbitmq.com          2022-10-05T18:54:35Z
helmreleases.helm.fluxcd.io       2022-10-05T18:40:03Z
permissions.rabbitmq.com          2022-10-05T18:54:35Z
policies.rabbitmq.com             2022-10-05T18:54:35Z
queues.rabbitmq.com               2022-10-05T18:54:35Z
rabbitmqclusters.rabbitmq.com     2022-10-05T18:54:35Z
schemareplications.rabbitmq.com   2022-10-05T18:54:35Z
shovels.rabbitmq.com              2022-10-05T18:54:35Z
superstreams.rabbitmq.com         2022-10-05T18:54:35Z
users.rabbitmq.com                2022-10-05T18:54:35Z
vhosts.rabbitmq.com               2022-10-05T18:54:35Z
````
