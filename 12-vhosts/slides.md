%title: RABBITMQ
%author: xavki


# RABBITMQ : Les VHOSTs

<br>

* virtual hosts = isolation

		* connexions
		* exchanges
		* queues
		* bindings
		* permissions
		* policies

<br>

* définition par la GUI ou rabbitmqctl / HTTP API

<br>

* défaut = /

<br>

* permissions (seuls les tags donnent des permissions étendues à plusieurs vhosts)

<br>

* interconnection entre vhost impossible sauf niveau applicatif (shovels ou apps)


------------------------------------------------------------------------

# RABBITMQ : Les VHOSTs


<br>

CREATION

* CLI

```
rabbitmqctl add_vhost vhost1
```

* HTTP API

```
curl -u xavki:password -X PUT http://192.168.12.48:15672/api/vhosts/vhost1
```

* GUI

cf demo

* attention: opération de lock sur le cluster à la création

------------------------------------------------------------------------

# RABBITMQ : Les VHOSTs


<br>

SUPPRESSION

* CLI

```
rabbitmqctl delete_vhost vhost1
```

* HTTP API

```
curl -u xavki:password -X DELETE http://192.168.12.48:15672/api/vhosts/vhost1
```

* GUI

cf demo

------------------------------------------------------------------------

# RABBITMQ : Les VHOSTs


<br>

MAX-CONNECTIONS - MAX-QUEUES - MAX-CHANNELS

* par user et/ou parvhost

* CLI

```
rabbitmqctl set_vhost_limits -p vhost1 '{"max-connections": 256}'
rabbitmqctl set_vhost_limits -p vhost1 '{"max-connections": 1000, "max-queues": 10000}'
```

* HTTP API

```
curl -v -H "content-type:application/json" -u xavki:password
-X PUT http://192.168.12.48:15672/api/vhost-limits/vhost1/max-connections -d '{"value": 1000}'
```

pour delete

```
curl -v -H "content-type:application/json" -u xavki:password
-X DELETE http://192.168.12.48:15672/api/vhost-limits/vhost1/max-connections
```

* GUI

Admin > Limits

Note: passer à 0 pour ne plus autoriser de connexions
