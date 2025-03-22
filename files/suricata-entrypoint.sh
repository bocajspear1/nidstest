#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -I INPUT -j NFQUEUE
iptables -I FORWARD -j NFQUEUE
iptables -I OUTPUT -j NFQUEUE

/usr/bin/suricata  -c /etc/suricata/suricata.yaml --pidfile /var/run/suricata.pid  -q 0