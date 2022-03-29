%title: RABBITMQ
%author: xavki


# RABBITMQ : Les Queues


<br>

* FIFO système (first in first out)
		* exceptions: priorités et requeuing

* le nom de la queue peut être créer avant la connexion

* ou à la connexion d'applicaifs (producer ou consumer)

* les queues commençant par "amq." sont réservées

* le broker peut aussi générer le nom

* rappel : pour envoyer dans une queue : exchange + binding

* Propriétés :

		* nom

		* durabilité

		* auto-delete

		* arguments
