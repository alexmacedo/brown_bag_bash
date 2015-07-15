#!/bin/bash

USERNAME=""
PASSWORD=""
HOST=""

mysqladmin processlist --user=$USERNAME --password=$PASSWORD --host=$HOST | \
awk '$2 ~ /^[0-9]/ {print "KILL "$2";"}' | \
mysql -user=$USERNAME --password=$PASSWORD --host=$HOST