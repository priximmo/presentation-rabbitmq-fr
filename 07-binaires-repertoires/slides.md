%title: RABBITMQ
%author: xavki


# RABBITMQ : Binaires & Répertoires



<br>


    * rabbitmqctl : management de rabbitmq et autres actions générales

    * rabbitmq-diagnostics : état des brokers et cluster

    * rabbitmq-plugins : management des plugins

    * rabbitmq-queues : pour la maintenance et actions sur les queues

    * rabbitmq-upgrade : pour gérer les maintenances, actions sur les brokers

		* rabbitmqadmin : actions via l'API (à distance)

		* rabbitmq-collect-env : aide au troubleshooting

		* rebalance-queue-masters : rebalance des queues sur le cluster

<br>

* beaucoup de paramètres peuvent être définis dans les variable d'environement
https://www.rabbitmq.com/relocate.html#environment-variables

* /etc/rabbitmq/rabbimq.conf : principal fichier de configuration
		* peut se retrouver au début des logs
		* ou via rabbitmq-diagnostics status
		* 2 formats : ini/sysctl = .conf ou classic format

* /var/lib/rabbitmq : répertoire de datas / erlang cookie (cluster)

* /var/log/rabbitmq : répertoire des logs

* /etc/rabbitmq/enabled_plugins : localisaion des plugins



