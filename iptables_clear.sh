#!/bin/sh
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

iptables --flush
iptables --flush INPUT
iptables --flush OUTPUT
iptables --flush FORWARD
iptables --flush -t mangle
iptables --flush -t nat
iptables --delete-chain
