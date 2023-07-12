#!/bin/bash


#-------

docker exec df-ht bash -c "ip addr add 10.0.2.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec to-ht bash -c "ip addr add 10.0.3.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec pa-ht bash -c "ip addr add 10.0.4.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec ma-ht bash -c "ip addr add 10.0.5.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec pi-ht bash -c "ip addr add 10.0.6.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec ce-ht bash -c "ip addr add 10.0.7.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

#-------
