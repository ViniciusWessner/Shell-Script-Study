#!/usr/bin/env bash

echo "=== for 1"
for (( i= 0; i <10; i++ )); do
    echo $i
done

echo "=== for 2 (seq)"
# esse comando retorna uma lista, e fazemos um for para cada item da lista

for i in $(seq 10)
do
    echo $i
done

echo "=== for 3 (array)"

FRUTAS=(
    'laranja'
    'ameixa'
    'abacaxi'
    'bergamota'
)
for i in ${FRUTAS[@]}; do
    echo $i
done

echo "====== while"
contador=0

while [[ $contador -lt ${#FRUTAS[@]} ]]; do
    echo $contador
    contador=$(($contador+1))
done

for arquivo in $(ls)
do
    echo "Encontramos o arquivo:"
    echo $arquivo
done