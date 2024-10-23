#!/usr/bin/env bash

# -------------------------------------------- #
# Este programa tem a responsabilidade de gerar um triangulo invertido de asteriscos
#
#  Exemplos: 
#       Dar permissão para o script
#           chmod a+x desafio.sh
#       Rodar o o script 
#            ./desafio.sh
#              Irá executar o programa e irá retornar um tringulo invertido de asteriscos
#
# -------------------------------------------- #
#   Historico
#   v1.0 - 10/05/2020 - Mateus
#      - Criação do script 
#   v1.1 - 21/10/2024 - Vinicius
#      -  Reorganizando o codigo
#
# -------------------------------------------- #
#   Testado em:
#       zsh 4.4.19
#
#
# -------------------------------------------- #

INICIO=0 
FIM=100

#$VALORINICIAL é igual ou maior $VALORFINAL?
[ $INICIO -ge $FIM ] && exit 1

for i in $(seq $INICIO $FIM);do  #controla as linhas
    for j in $(seq $i $FIM);do   #imprime asteriscos com base no valor de i
        printf "*"
    done;
        printf "\n"              #Imprime uma nova linha a cada linha de asteriscos
done