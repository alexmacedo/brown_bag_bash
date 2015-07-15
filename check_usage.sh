#!/bin/bash

DISK='disk1'
SEND_TO='meuemail@kekanto.com'

test -n $1 && DISK=$1
test -n $2 && SEND_TO=$2

used=$(df -h | grep $DISK | awk '{print $5}' | cut -d% -f1)

if [ $used -gt 95 ]
then
    echo "Tá quase lotado, véi!" | mail -s "Uso em ${used}%" $SEND_TO
fi