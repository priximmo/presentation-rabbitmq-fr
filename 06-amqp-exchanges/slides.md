%title: RABBITMQ
%author: xavki


# RABBITMQ : AMQP & les types d'Exchanges



<br>

PROTOCOL AMQP 0-9-1

* Publishers > Brokers > Consumers

	> Publishers > Exchanges > Queues > Consumers

* Exchange = distribue les messages dans le/les queues

* Queues = consommées par les consumers suivant leur souscription

* Bindings = connexion exchange à une/des queues

* Routing = metadatas > règles de distribution

* un message déliveré est acquité > suppression de la queue

* différents comportements si non routé (supprimés, retourné...)

* règles de routing définies par les applicatifs (développeurs)

* entities = queues + exchanges + bindings


<br>

Caractéristiques d'un exchange :

		* nom

		* durability : conservé sur restart des brokers

		* auto-delete : suppression sur suppression des queues

		* arguments : spécifiques à des plugins...

<br>

Différents types d'exchanges :

		* default

		* direct

		* fanout

		* topic

		* headers

<br>

DEFAULT EXCHANGE :

		* sans nom

		* pré-déclaré (rien à faire)

		* automatique > nom de queue = routing key = default exchange

		* le plus simple montage direct de la queue dans l'exchange

<br>

DIRECT EXCHANGE
