#!/bin/bash

USERNAME=""
PASSWORD=""
HOST=""

mysqladmin processlist -u $USERNAME -p$PASSWORD -h $HOST | \
awk '$2 ~ /^[0-9]/ {print "KILL "$2";"}' | \
mysql -u $USERNAME -p$PASSWORD -h $HOST