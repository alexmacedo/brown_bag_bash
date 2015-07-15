#!/bin/bash

echo "Nome: $0"
echo "Total de paramêtros passados: $#"
echo "Parâmetros: $*"

i=1
for p in $@
do
    echo "$i - $p"
    let i++
done