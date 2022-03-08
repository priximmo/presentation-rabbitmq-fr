%title: RABBITMQ
%author: xavki


# RABBITMQ : Activation GUI & Admin



<br>

* activation du plugin de management

```
rabbitmq-plugins enable rabbitmq_management
```

----------------------------------------------------------------------

# RABBITMQ : Activation GUI & Admin


<br>

* configuration pour écouter via toutes les interfaces

```
#cat /etc/rabbitmq/rabbitmq.conf #sysctl format
listeners.tcp.1 = 0.0.0.0:5672
management.tcp.port = 15672
```

----------------------------------------------------------------------

# RABBITMQ : Activation GUI & Admin

<br>

* création du premier user

```
rabbitmqctl add_user <user> <password>
```

<br>

* ajout des permissions

```
rabbitmqctl set_permissions -p / <user> ".*" ".*" ".*"
#set_permissions [--vhost <vhost>] <username> <conf> <write> <read>
```

<br>

* définition du user tag
https://rabbitmq.com/management.html#permissions

```
rabbitmqctl set_user_tags <user> administrator
```



