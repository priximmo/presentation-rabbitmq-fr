%title: RABBITMQ
%author: xavki


# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

		producer > queue > consumer

<br>

* un peu plus compliqué / abouti

<br>

PRODUCER

	* créé des messages

	* met en forme les messages (json, plain text...)

	* connexions au broker

	* envoi du message

	* utilisation d'un user/password

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

BROKER

	* un serveur rabbitmq

	* héberge les queues

	* association à un cluster potentiel

	* gestion sécurité (user/vhost...)

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>
<br>

CONSUMER

	* abonnement à une queue

	* consomment les messages

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

MESSAGE

	* différents type

	* dipose de headers et & metadonnées

	* ordonnés

	* peuvent être répliqués ou non 

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

ROLES

	Producer > Broker > Consumer

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

BROKER - CHANNEL

	* multiplex de connexions

	* élément de la connexion

```
		channel, err := connection.Channel()
...
		err = channel.Publish(
...
)
```

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

BROKER - EXCHANGES

	* responsable de la réception des messages

	* différents types : direct / fanout / topic / headers 

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

BROKER - EXCHANGES - Binding

	* lien (connexion) d'un exchange à une queue

	* différent de la routing key (niveau messages)

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

BROKER - EXCHANGES - Routing Key

	* routing des messages via une clef de chacun des messages

	* couplé au type d'exchange

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

BROKER - QUEUES

	* stockage des messages

	* différents types (classic / quorum / stream) 

	* durabilité 

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS


<br>

BROKER - VHOST

	* séparation / isolation 

	* sur un ou plusieurs broker

---------------------------------------------------------------------------

# RABBITMQ : DEFINITIONS & CONCEPTS

<br>

  Producer > Channel > Exchange > Binding > Routing Key > Queue > Consumer
