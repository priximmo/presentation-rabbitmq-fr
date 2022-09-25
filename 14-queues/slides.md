%title: RABBITMQ
%author: xavki


# RABBITMQ : Les Queues


<br>

* FIFO système (first in first out)
		* exceptions: priorités, sharded et requeuing
		* round-robin si plusieurs consumer (sans priorité)

<br>

Création :

	* le nom de la queue peut être créer avant la connexion

	* ou à la connexion d'applicaifs (producer ou consumer)

Note : les queues commençant par "amq." sont réservées

-------------------------------------------------------------------------------

# RABBITMQ : Les Queues

<br>

* le broker peut aussi générer le nom

* rappel : pour envoyer dans une queue : exchange + binding

<br>

Types : 

		* Simple : les messages sont stockés dans une queue unique et consommé FIFO

		* Quorum : anciennement mirroring, c'est une queue repliquée (leader/followers)

		* Stream : se rapproche du kafka stream avec la possiblité de revenir sur des messages

		* (Mirror) : copie des messages sur plusieurs brokers différents

-------------------------------------------------------------------------------

# RABBITMQ : Les Queues

<br>

* Propriétés :

		* nom

<br>

		* durabilité (idem messages): 
				* durable : 
						* conserver au restart (et leur messages)
						* metadatas conservées sur disque
						* nécessaire pour les quorum, streams, federated
				* transient :
						* non conservées (et leurs messages)
						* metadatas en mémoire
						* utile pour des apps à comportement temporaires
				* peu d'impact sur le débit et la latence

-------------------------------------------------------------------------------

# RABBITMQ : Les Queues

<br>

		* exclusivité : une conexion et suppression si plus de connexion

<br>

		* auto-delete : au moins un consumer sinon suppression

<br>

		* arguments : pour les plugins

-------------------------------------------------------------------------------

# RABBITMQ : Les Queues

<br>

* déclaration d'une queue : 
		* entraîne sa création si n'existe pas
		* si existe et attributs différents alors (406) channel exception
		* certains arguments peuvent être changés

<br>

* arguments :
		* définis au niveau de chaque queue
		* ou par les policies (pattern) > pas pour tous les arguments


Exemple d'arguments :
		* x-queue-type
		* x-max-priority
		* x-message-ttl ou message-ttl (policy) > message
		* x-expires ou expires (policy) > queue


-------------------------------------------------------------------------------

# RABBITMQ : Les Queues

<br>

* création d'un vhost

```
rabbitmqctl add_vhost v1
rabbitmqctl list_vhosts
```

-------------------------------------------------------------------------------

# RABBITMQ : Les Queues

<br>

* création d'une queue

```
rabbitmqadmin -u=xavki -p=password --vhost=v1
declare queue name=q1 durable=true arguments='{"x-queue-type": "quorum"}'
```

-------------------------------------------------------------------------------

# RABBITMQ : Les Queues

<br>

* création de l'exchange

```
rabbitmqadmin -u xavki -p password --vhost v1
declare exchange name=xavki_exchange type=direct
```

-------------------------------------------------------------------------------

# RABBITMQ : Les Queues

<br>

* création du binding

rabbitmqadmin -u xavki -p password --vhost v1
declare binding source="xavki_exchange" destination_type="queue"
destination="q1" routing_key="q1"
