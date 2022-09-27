%title: RABBITMQ
%author: xavki


# RABBITMQ & Benthos & Cassandra 


Production / Consommation / Ecriture


curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker vagrant
docker run -d --name cass_cluster -p 9042:9042cassandra:latest

docker exec -it cass_cluster cqlsh
CREATE KEYSPACE rmq WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1 }
CREATE TABLE rmq.t1 ( id varchar PRIMARY KEY  , received_at varchar , message varchar , host varchar)


curl -Lsf https://sh.benthos.dev | bash

https://www.benthos.dev/docs/components/outputs/cassandra/

