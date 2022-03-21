%title: RABBITMQ
%author: xavki


# RABBITMQ : Différents Exchanges : démo



<br>

* direct : name_queue = routing_key

	* queues : xavki-sms-queue / xavki-email-queue / xavki-email-manual
	* exchange : direct-exchange = direct + binding (xavki-direct-queue)
	* test: exchange > direct-exchange > publish

--------------------------------------------------------------------------

# RABBITMQ : Différents Exchange : démo


<br>

* topic : name_queue = pattern_routing_key

	* queues : xavki-sms-queue / xavki-email-queue / xavki-email-manual
	* exchange : topic-exchange = topic + binding (xavki.\*.queue / xavki.\*.manual)
	* \* = specific position /  # 0 ou plusieurs mots

--------------------------------------------------------------------------

# RABBITMQ : Différents Exchange : démo

<br>

* fanout : toutes les binding queues (without key)

	* q1 / q2 / q3
	* exchange : fanout

--------------------------------------------------------------------------

# RABBITMQ : Différents Exchange : démo

<br>

* header : juste sur le(s) header(s)

	* q1 / q2 / q3 / q4
	* exchange : header
	* receiver / object
	* x-match (all/any)
