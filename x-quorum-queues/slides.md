%title: RABBITMQ
%author: xavki


# RABBITMQ : Quorum Queues


<br>

* protocol Raft

* depuis 3.8.0

* alternative aux queues mirroirs

* option par défaut pour la réplication

* dans certains cas le streams est plus intéressant

* élection à la majorité (N/2) + 1
		* en accord sur l'état et le contenu des queues (et réplicas)


* comparaison : https://www.rabbitmq.com/quorum-queues.html#feature-matrix

* quorum queues : 
		* toujours durable (restart)
		* non exclusive (leader + followers)
		* pas message TTL / mais queue TTL
		* support le dead letter exchange
		* pas de lazy mode car stockage sur disk (memory limit possible)
		* pas de global prefetch mais par consumer
		* pas de priority
		* poison message handling utilisable (éviter trop de requeuing)

* max-length-limit vs reject-publish = pas de notif client


 

