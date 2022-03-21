%title: RABBITMQ
%author: xavki


# RABBITMQ : Binaires & Répertoires


<br>

    * rabbitmqctl : management de rabbitmq et autres actions générales

<br>

    * rabbitmq-diagnostics : état des brokers et cluster

<br>

    * rabbitmq-plugins : management des plugins

<br>

    * rabbitmq-queues : pour la maintenance et actions sur les queues

<br>

    * rabbitmq-upgrade : pour gérer les maintenances, actions sur les brokers

<br>

		* rabbitmqadmin : actions via l'API (à distance)

<br>

		* rabbitmq-collect-env : aide au troubleshooting

<br>

		* rebalance-queue-masters : rebalance des queues sur le cluster

-----------------------------------------------------------------------------------------------------------

# RABBITMQ : Binaires & Répertoires


<br>

* beaucoup de paramètres peuvent être définis dans les variable d'environement
https://www.rabbitmq.com/relocate.html#environment-variables

<br>

* /etc/rabbitmq/rabbimq.conf : principal fichier de configuration
		* peut se retrouver au début des logs
		* ou via rabbitmq-diagnostics status
		* 2 formats : ini/sysctl = .conf ou classic format

<br>

* /var/lib/rabbitmq : répertoire de datas / erlang cookie (cluster)

<br>

* /var/log/rabbitmq : répertoire des logs

<br>

* /etc/rabbitmq/enabled_plugins : localisaion des plugins



