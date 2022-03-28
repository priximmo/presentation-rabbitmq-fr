%title: RABBITMQ
%author: xavki


# RABBITMQ : Les USER & PERMISSIONS


<br>

* défaut : guest avec accès à /

* pour accès via une interface autre que la loopback

```
loopback_users = none
#avant le premier boot
default_user = a-user
default_pass = 768a852ed69ce916fa7faa278c962de3e4275e5f
```

<br>

AJOUT

```
rabbitmqctl add_user user1
echo 'password' | rabbitmqctl add_user user2
rabbitmqctl add_user user3 password
rabbitmqctl list_users
```

-----------------------------------------------------------------------------

# RABBITMQ : Les USER & PERMISSIONS


PERMISSIONS

<br>

* ajout du tag management pour l'interface graphique

```
rabbitmqctl set_user_tags xavki management
```

Attention : tag ne veut pas dire permission ex : admin

-----------------------------------------------------------------------------

# RABBITMQ : Les USER & PERMISSIONS

<br>

* 3 types d'accès par vhost et par user (cumulable):

		* configure : configuration d'exchanges ou queues (suivant pattern)

		* read : lecture sur les exchanges et queues (suivant pattern)

		* write : écriture sur les exchanges et queues (suivant pattern)

<br>

* pattern pour plus de liberté

```
rabbitmqcl add_vhost vhost2
rabbitmqctl list_vhosts
^[x|z].*
```

-----------------------------------------------------------------------------

# RABBITMQ : Les USER & PERMISSIONS

<br>

* changer un password

```
rabbitmqctl change_password user1
rabbitmqctl delete_user user2
```
