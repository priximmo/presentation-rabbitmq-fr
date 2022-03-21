%title: RABBITMQ
%author: xavki


# RABBITMQ : AMQP & les types d'Exchanges



<br>

PROTOCOL AMQP 0-9-1

* Publishers > Brokers > Consumers

	Publishers > Exchanges > Queues > Consumers

* Exchange = distribue les messages dans le/les queues

* Queues = consommées par les consumers suivant leur souscription

* Bindings = connexion exchange à une/des queues

* Routing = metadatas > règles de distribution

* un message délivré est acquité > suppression de la queue

* différents comportements si non routé (supprimés, retourné...)

* règles de routing définies par les applicatifs (développeurs)

* entities = queues + exchanges + bindings

----------------------------------------------------------------------------------------------

# RABBITMQ : AMQP & les types d'Exchanges

<br>

Caractéristiques d'un exchange :

		* nom

		* durability : conservé sur restart des brokers

		* auto-delete : suppression sur suppression des queues

		* arguments : spécifiques à des plugins...

----------------------------------------------------------------------------------------------

# RABBITMQ : AMQP & les types d'Exchanges

<br>

Caractéristiques d'une queue :

		* nom

		* durability : conservé si restart

		* exclusive : accepte une seule connexion et est supprimée après

		* auto-delete : doit avoir au moins un consumer (sinon suppression)

		* arguments : utilisés par les plugins (ttl...)

----------------------------------------------------------------------------------------------

# RABBITMQ : AMQP & les types d'Exchanges

<br>

Différents types d'exchanges :

		* default

		* direct

		* fanout

		* topic

		* headers

----------------------------------------------------------------------------------------------

# RABBITMQ : AMQP & les types d'Exchanges

<br>

DEFAULT EXCHANGE :

		* sans nom

		* pré-déclaré (rien à faire)

		* automatique > nom de queue = routing key = default exchange

		* le plus simple montage direct de la queue dans l'exchange

----------------------------------------------------------------------------------------------

# RABBITMQ : AMQP & les types d'Exchanges

<br>

DIRECT EXCHANGE :

		* routing basé sur la routing key

		* la queue est ajouté à l'exchange avec une routing key associé

		* pratique pour scaler une application (distribution round robin)

		* attention : le load balancing se fait sur le consumer (pas queue)

----------------------------------------------------------------------------------------------

# RABBITMQ : AMQP & les types d'Exchanges

<br>

FANOUT EXCHANGE :

		* route sur toutes les queues (intégralement)

		* pas besoin de routing queue

		* idéal pour le broadcast de messages (utilisable par diff services)

----------------------------------------------------------------------------------------------

# RABBITMQ : AMQP & les types d'Exchanges


<br>

TOPIC EXCHANGE :

		* couple routing key et pattern de queue au niveau de l'exchange

		* utiles pour des patterns complexes

		* ex : distribution sur localisation...

----------------------------------------------------------------------------------------------

# RABBITMQ : AMQP & les types d'Exchanges


<br>

HEADER EXCHANGE :

		* pas de routing key

		* basé sur les headers du message

		* utilisation du x-match binding

		* "all" ou "any" sur les conditions
