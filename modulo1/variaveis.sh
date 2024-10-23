#!/usr/bin/env bash


NOME="viniciuswessner"
echo $NOME


NUMERO_1=22
NUMERO_2=30

TOTAL=$((NUMERO_1+NUMERO_2))

echo $TOTAL

SAIDA_CAT=$(cat /etc/passwd | grep wessner)


echo $SAIDA_CAT
