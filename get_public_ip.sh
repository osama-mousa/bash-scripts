#!/bin/bash
while true; do
    IP=$(curl -s https://api.ipify.org)
    echo "IP: $IP"
    sleep 60 # يحدث كل 5 دقائق
done
