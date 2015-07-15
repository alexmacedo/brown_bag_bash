#!/bin/bash

echo "Qual o seu nome?"
read name

if [ "$name" = "Alex" ]
then
    name="Gostoso"
fi

echo "Olá, $name!"

for i in `seq 10`
do
    echo $i
done

# foo="bar"

echo "${foo:-bar}"
echo "$foo"
echo "${foo:=bar}"
echo "$foo"

echo "${#foo}"
echo "${foo:2}"
echo "${foo:0:2}"
