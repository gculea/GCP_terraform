#!/bin/bash

# Web Servers
echo "[web_servers]" > ansible_inventory.ini
for ip in $1; do
    echo "$ip" >> ansible_inventory.ini
done

# DB Servers
echo -e "\n[db_servers]" >> ansible_inventory.ini
for ip in $2; do
    echo "$ip" >> ansible_inventory.ini
done

# Add other groups similarly
