#!/bin/bash

ip route add 10.0.100.20/32 via 172.16.100.10

while [ 1 ]; do
    sleep 2
done