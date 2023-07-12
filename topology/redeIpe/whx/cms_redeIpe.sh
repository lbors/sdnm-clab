#!/bin/bash


#-------

docker exec clab-whx-redeIpe-df-ht bash -c "ip addr add 10.0.2.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec clab-whx-redeIpe-to-ht bash -c "ip addr add 10.0.3.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec clab-whx-redeIpe-pa-ht bash -c "ip addr add 10.0.4.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec clab-whx-redeIpe-ma-ht bash -c "ip addr add 10.0.5.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec clab-whx-redeIpe-pi-ht bash -c "ip addr add 10.0.6.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

docker exec clab-whx-redeIpe-ce-ht bash -c "ip addr add 10.0.7.1/24 dev eth1 ; ip route add 10.0.2.0/24 dev eth1 ; ip route add 10.0.3.0/24 dev eth1 ; ip route add 10.0.4.0/24 dev eth1 ; ip route add 10.0.5.0/24 dev eth1 ; ip route add 10.0.6.0/24 dev eth1 ; ip route add 10.0.7.0/24 dev eth1"

#-------
