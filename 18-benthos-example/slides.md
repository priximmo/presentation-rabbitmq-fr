%title: RABBITMQ
%author: xavki


# RABBITMQ : Sharding vs Quorum


<br>

quorum queues

	* objectif : haut dispo (cas de perte)

	* bénéficier de leader et de followers

	* rabbitmq-queues rebalance quorum

-----------------------------------------------------------------

# RABBITMQ : Sharding vs Quorum


<br>

```
rabbitmqadmin -u=xavki -p=password --vhost=/ 
declare queue name=q1 durable=true arguments='{"x-queue-type": "quorum"}'

rabbitmqadmin -u xavki -p password --vhost=/
declare binding source="xavki_exchange" destination_type="queue"
destination="q1" routing_key="1"

rabbitmq-queues rebalance quorum
```

-----------------------------------------------------------------

# RABBITMQ : Sharding vs Quorum


<br>

sharding queues

	* améliorer les perfomances en distribuant les messages

	* distribution via un algo

	* combinaison possible avec quorum queues

-----------------------------------------------------------------

# RABBITMQ : Sharding vs Quorum


<br>

* modulus hash plus rapide que consistent hash

* consistent hash = répartition plus régulière

```
rabbitmq-plugins enable rabbitmq_sharding
rabbitmq-plugins enable rabbitmq_consistent_hash_exchange
```

https://github.com/rabbitmq/rabbitmq-server/tree/main/deps/rabbitmq_sharding
https://github.com/rabbitmq/rabbitmq-server/tree/main/deps/rabbitmq_consistent_hash_exchange

Attention : pseudo sharding > pb consommation (lister les queues avant de s'y connecter)
