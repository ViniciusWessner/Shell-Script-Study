#!/usr/bin/env bash
#Validar se o primeiro parâmetro enviado é maior que 10
PARAMETRO_numerico=15

if [ "$PARAMETRO_numerico" -gt 10 ]
then
    #Se for maior, mostre uma mensagem na tela com o nome do script e seu respectivo PID de execução
    echo "Nome do script executado: $0"
    echo "PID de execução: $$"
fi


