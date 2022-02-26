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

<br>

BROKER

	* un serveur rabbitmq

	* héberge les queues

	* association à un cluster potentiel

	* gestion sécurité (user/vhost...)

<br>

CONSUMER

	* abonnement à une queue

	* consomment les messages

<br>

ROLES

	Producer > Broker > Consumer

<br>

BROKER - EXCHANGES

	* responsable de la réception des messages

	* différents types : direct / fanout / topic / headers 

<br>

BROKER - EXCHANGES - Binding

	* lien (connexion) d'un échange à une queue

	* différent de la routing key (niveau messages)

<br>

BROKER - EXCHANGES - Routing Key

	* routing des messages via une clef de chacun des messages

	* couplé au type d'exchange

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

<br>

BROKER - QUEUES

	* stockage des messages

	* différents types (classic / quorum / stream) 

	* durabilité 

<br>

BROKER - VHOST

	* séparation / isolation 

	* sur un ou plusieurs broker


  Producer > Channel > Exchange > Binding > Routing Key > Queue > Consumer
