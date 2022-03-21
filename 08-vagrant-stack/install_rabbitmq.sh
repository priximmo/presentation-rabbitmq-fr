#!/bin/bash

## install rabbitmq

IP=$(hostname -I | awk '{print $2}')
echo "START - install rabbitmq "$IP




echo "[1]: install erlang-nox & utils"
apt-get update -qq >/dev/null
apt-get install -qq -y wget unzip dnsutils erlang-nox >/dev/null


echo "[2]: install rabbitmq"
wget -q https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.9.13/rabbitmq-server_3.9.13-1_all.deb
dpkg -i rabbitmq-server_3.9.13-1_all.deb


echo "[3]: minimal configuration"
rabbitmq-plugins enable rabbitmq_management
echo "YOATBIGKDHUSBLUSTOAW" | sudo tee /var/lib/rabbitmq/.erlang.cookie
echo "listeners.tcp.1 = 0.0.0.0:5672" | sudo tee -a /etc/rabbitmq/rabbitmq.conf
echo "management.tcp.port = 15672" | sudo tee -a /etc/rabbitmq/rabbitmq.conf
systemctl restart rabbitmq-server


if [[ "$1" == "leader" ]]; then
echo "[4]: define default user"
rabbitmqctl add_user xavki password
rabbitmqctl set_permissions -p / xavki ".*" ".*" ".*"
rabbitmqctl set_user_tags xavki administrator
rabbitmqctl delete_user guest
fi

if [[ "$1" == "follower" ]]; then
echo "[4]: join leader"
rabbitmqctl stop_app
rabbitmqctl join_cluster rabbit@rmq1
rabbitmqctl start_app
fi
