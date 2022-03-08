%title: RABBITMQ
%author: xavki


# RABBITMQ : Premier Cluster



<br>

SUR TOUS LES SERVEURS

<br>

* installation rabbitmq

```
sudo apt install erlang-nox
wget https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.9.13/rabbitmq-server_3.9.13-1_all.deb
sudo dpkg -i rabbitmq-server_3.9.13-1_all.deb
rabbitmq-plugins enable rabbitmq_management
```

# RABBITMQ : Premier Cluster
<br>

* installation

```
echo "YOATBIGKDHUSBLUSTOAW" | sudo tee /var/lib/rabbitmq/.erlang.cookie
echo "listeners.tcp.1 = 0.0.0.0:5672" | sudo tee -a /etc/rabbitmq/rabbitmq.conf
echo "management.tcp.port = 15672" | sudo tee -a /etc/rabbitmq/rabbitmq.conf
systemctl restart rabbitmq-server
```

----------------------------------------------------------------------------------------

# RABBITMQ : Premier Cluster


<br>



SUR LE LEADER

* création du premier user

```
rabbitmqctl add_user xavki password
```

<br>

* ajout des permissions

```
rabbitmqctl set_permissions -p / xavki ".*" ".*" ".*"
#set_permissions [--vhost <vhost>] <username> <conf> <write> <read>
```

<br>

* définition du user tag
https://rabbitmq.com/management.html#permissions

```
rabbitmqctl set_user_tags xavki administrator
```


----------------------------------------------------------------------------------------

# RABBITMQ : Premier Cluster


<br>

SUR LES AUTRES SERVEURS


```
rabbitmqctl stop_app
rabbitmqctl join_cluster rabbit@rmq1
rabbitmqctl start_app
```

```
rabbitmqctl cluster_status --formatter=json | jq -r .running_nodes[]
```


