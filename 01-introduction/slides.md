%title: RABBITMQ
%author: xavki


# RABBITMQ : INTRODUCTION


<br>

* opensource

Git : https://github.com/rabbitmq/rabbitmq-server

Doc : https://www.rabbitmq.com/documentation.html 

<br>

Langage : Erlang (développé par Ericsson)

<br>

* message broker comme kafka (Middleware Orienté Messages - MOM)

		* producer > queue > consumer

<br>

* ce n'est pas un commit log c'est une queue de messages

* FIFO : First In First Out

  Producer > 10 9 8 7 ... 1 > Consumer

-------------------------------------------------------------------------------------------

# RABBITMQ : INTRODUCTION

<br>

* créé en 2007 par Rabbit Technologies Ltd

<br>

* puis acquise par SpringSource (vmware) en 2010

<br>

* fait partie de pivotal software

<br>

* actuellement version 3.9.13


-------------------------------------------------------------------------------------------

# RABBITMQ : INTRODUCTION

<br>

* processer de manière asynchrone

<br>

* mode cluster (différents types et mirroring de cluster)

<br>

* de nombreux librairies dans différents langages (java, php, python, go...)

<br>

* souvent au coeur des architectures microservices

<br>

		* assimilable à un mode de communication

<br>

		* facilite la maintenance

<br>

		* facilite la scalabilité / répartition de charge

<br>

		* permet de mieux gérer les défaillances

-------------------------------------------------------------------------------------------

# RABBITMQ : INTRODUCTION


<br>

* messages de différentes natures :
	
		* données métier (sms, email...)

		* des instructions

		* des lignes de commandes

		* des images à lancer

		* des jobs à réaliser...

-------------------------------------------------------------------------------------------

# RABBITMQ : INTRODUCTION

<br>

* protocoles : https://www.rabbitmq.com/protocols.html

		* AMQP : Advanced Message Queuing Protocol (diff langages C/P)

		* STOMP : Streaming Text Oriented Message Protocol (sous TCP)

		* MQTT : Message Queuing Telemetry Transport (pub/sub léger, IoT)

		* HTTP : Hypertext Transfer Protocol

* chiffrement possible : AMQPS / MQTTS

-------------------------------------------------------------------------------------------

# RABBITMQ : INTRODUCTION


<br>

* plugins : 

		* rabbitmq_management_agent

		* rabbitmq_shovel

		* rabbitmq_federation

		* rabbitmq_prometheus

		* rabbitmq_priority_queue

		* rabbitmq_email

-------------------------------------------------------------------------------------------

# RABBITMQ : INTRODUCTION

<br>


Définitions

	* broker

	* exchanges

	* queue

	* binding

	* routing keye

	* consumer/producer

