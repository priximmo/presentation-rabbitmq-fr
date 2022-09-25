%title: RABBITMQ
%author: xavki


# RABBITMQ : Les Shovels


<br>

Objectif : Comment connecter 2 cluster rabbitmq ?

		cluster1 / vhost / q1  > cluster2 / vhost / q2
		cluster1 / vhost / q1  > cluster2 / vhost / exchange1

--------------------------------------------------------------------

# RABBITMQ : Les Shovels

<br>

* activation du plugin

```
rabbitmq-plugins enable rabbitmq_shovel 
rabbitmq-plugins enable rabbitmq_shovel_management
```

--------------------------------------------------------------------

# RABBITMQ : Les Shovels

<br>

* création du shovel

```
rabbitmqadmin -u xavki -p password
declare parameter component=shovel name=shovel_to_q2 value='{
"dest-queue": "q2", "dest-uri": ["amqp://xavki:password@192.168.12.51:5672"],
"src-queue": "q1", "src-uri": ["amqp://"] }'
```
<br>

* suppression du shovel

```
rabbitmqctl clear_parameter shovel shovel_to_q2
```
