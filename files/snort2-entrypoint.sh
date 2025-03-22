#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -I INPUT -j NFQUEUE --queue-num=0
iptables -I FORWARD -j NFQUEUE --queue-num=0
iptables -I OUTPUT -j NFQUEUE --queue-num=0


/usr/sbin/snort -c /etc/snort/snort.conf --pid-path /var/run/ -Q -A fast