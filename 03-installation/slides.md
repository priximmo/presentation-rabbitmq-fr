%title: RABBITMQ
%author: xavki


# RABBITMQ : Installation


<br>

Différents OS :

		* Linux

		* Windows

		* MacOS


-----------------------------------------------------------------------------------------------------------------

# RABBITMQ : Installation


<br>


```
    4369: epmd, a peer discovery service used by RabbitMQ nodes and CLI tools
    5672, 5671: used by AMQP 0-9-1 and 1.0 clients without and with TLS
    25672: inter-node and CLI tools communication 
    35672-35682: used by CLI tools 
    15672: HTTP API clients, management UI and rabbitmqadmin
    61613, 61614: STOMP clients without and with TLS
    1883, 8883: MQTT clients without and with TLS, if the MQTT plugin is enabled
    15674: STOMP-over-WebSockets clients (only if the Web STOMP plugin is enabled)
    15675: MQTT-over-WebSockets clients (only if the Web MQTT plugin is enabled)
    15692: Prometheus metrics (only if the Prometheus plugin is enabled)
```

-----------------------------------------------------------------------------------------------------------------

# RABBITMQ : Installation


<br>

* via les dépôts apt :

```
curl -1sLf https://dl.cloudsmith.io/public/rabbitmq/rabbitmq-erlang/gpg.E495BB49CC4BBE5B.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/io.cloudsmith.rabbitmq.E495BB49CC4BBE5B.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/io.cloudsmith.rabbitmq.E495BB49CC4BBE5B.gpg] https://dl.cloudsmith.io/public/rabbitmq/rabbitmq-erlang/deb/debian bullseye main" | sudo tee -a /etc/apt/sources.list.d/rabbitmq.list
```

```
curl -1sLf https://dl.cloudsmith.io/public/rabbitmq/rabbitmq-server/gpg.9F4587F226208342.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/io.cloudsmith.rabbitmq.9F4587F226208342.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/io.cloudsmith.rabbitmq.9F4587F226208342.gpg] https://dl.cloudsmith.io/public/rabbitmq/rabbitmq-server/deb/debian bullseye main" | sudo tee -a /etc/apt/sources.list.d/rabbitmq.list
```

-----------------------------------------------------------------------------------------------------------------

# RABBITMQ : Installation


<br>

* installation

```
sudo apt install erlang-nox rabbitmq-server
dpkg -l | grep rabbitmq
```

<br>

* via le .deb

```
sudo apt install erlang-nox
wget https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.9.13/rabbitmq-server_3.9.13-1_all.deb
sudo dpkg -i rabbitmq-server_3.9.13-1_all.deb
```


-----------------------------------------------------------------------------------------------------------------

# RABBITMQ : Installation


<br>

* quelques vérifications


```
sudo rabbitmq-diagnostics ping
sudo rabbitmq-diagnostics status
sudo rabbitmq-diagnostics cluster_status
sudo rabbitmq-diagnostics environment
```
