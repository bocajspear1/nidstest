#!/bin/bash

ip route add 172.16.100.15/32 via 10.0.100.10

nginx -g 'daemon off;'