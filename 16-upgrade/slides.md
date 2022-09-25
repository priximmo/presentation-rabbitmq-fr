%title: RABBITMQ
%author: xavki


# RABBITMQ : Upgrade du Cluster


<br>

Attention :

	* avec les quorum c'est easy 

	* avec du dns ou LB (consul excellent !!)

sinon... la galère commence :)

https://www.rabbitmq.com/upgrade.html

--------------------------------------------------------------------------------

# RABBITMQ : Upgrade du Cluster

<br>

* sur tous les noeuds

```
rabbitmqctl enable_feature_flag maintenance_mode_status
```

--------------------------------------------------------------------------------

# RABBITMQ : Upgrade du Cluster

<br>

* sur le noeud en maintenance

```
rabbitmq-upgrade drain
rabbitmqctl stop_app
systemctl stop rabbitmq-server
```

--------------------------------------------------------------------------------

# RABBITMQ : Upgrade du Cluster

<br>

* si installation via apt et dépôt spécifique (idem pour erlang-nox)

```
apt-cache madison rabbitmq-server
apt install --only-upgrade rabbitmq-server
```

* via le .deb et dpkg

wget -q https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.10.7/rabbitmq-server_3.10.7-1_all.deb

--------------------------------------------------------------------------------

# RABBITMQ : Upgrade du Cluster

<br>

* et on relance

```
rabbitmqctl start_app
rabbitmq-upgrade revive
```
