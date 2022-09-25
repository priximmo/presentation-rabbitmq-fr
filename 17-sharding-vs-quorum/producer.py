#!/usr/bin/python3

import pika
import time
credentials = pika.PlainCredentials('xavki', 'password')
conn = pika.BlockingConnection(pika.ConnectionParameters('localhost',5672,'/',credentials))
ch   = conn.channel()

ch.exchange_declare(exchange="consistent_exchange", exchange_type="x-consistent-hash", durable=True)

for q in ["q1", "q2","q3"]:
    ch.queue_declare(queue=q, durable=True)
    #ch.queue_declare(queue=q, durable=True,arguments={"x-queue-type": "quorum"})
    ch.queue_purge(queue=q)

for q in ["q1", "q2","q3"]:
    ch.queue_bind(exchange="consistent_exchange", queue=q, routing_key="1")

n = 1000000

for rk in list(map(lambda s: str(s), range(0, n))):
    ch.basic_publish(exchange="consistent_exchange", routing_key=rk, body="test de message")
print("Done publishing.")

print("Waiting for routing to finish...")
time.sleep(5)

print("Done.")
conn.close()

