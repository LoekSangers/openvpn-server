#!/bin/bash
mkdir -p /dev/net 
mknod /dev/net/tun c 10 200

iptables -t nat -A POSTROUTING -s 10.0.253.0/24 -o eth0 -j MASQUERADE

openvpn --config /etc/openvpn/server/lhs-vpn-server.conf