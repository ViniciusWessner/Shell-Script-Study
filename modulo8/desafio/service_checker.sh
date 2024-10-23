#!/usr/bin/env bash
# ---------------variaveis----------------------------- #
ARQUIVO_DE_CONFIGURACAO="services_config.cf"

USAR_CORES=0
VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
# --------------------Funcao------------------------ #
CheckService() {
    local servico=$1
    if systemctl is-active --quiet "$servico"; then
        [ "$USAR_CORES" = "1" ] && echo -e "${VERDE}$servico está rodando." || echo "$servico está rodando."
    else
        [ "$USAR_CORES" = "1" ] && echo -e "${VERMELHO}$servico não está rodando." || echo "$servico não está rodando."
    fi
}

eval $(./parser.sh $ARQUIVO_DE_CONFIGURACAO)

[ "$(echo $CONF_USAR_CORES)" = "1" ] && USAR_CORES="1"

# --------------------Execucao------------------------ #

for servico in $CONF_SERVICOS_MONITORAR; do
    CheckService "$servico"
done



#! /usr/bin/env bash

# cotarBitcoin.sh - Busca a ultima cotação do bitcoin 

# Site:  https://wessner-dev.vercel.app/
# Autor: Vinicius Wessner
# Manutenção: Seu nome ou de outro colega

# -------------------------------------------- #
# Este programa irá cotar a ultima valor do bitcoin com base na API XXxxx
#
#  Exemplos: 
#       Rodar o o script 
#            ./cotarBitcoin.sh
#              Irá executar o programa e irá retornar a cotação do bitcoin
#
# -------------------------------------------- #
#   Historico
#   v1.0 - 21/10/2024 - Joao
#      - Criação do script 
#   v1.1 - 18/11/2024 - Vinicius
#      -  Alterado o endpoint para consulta
#
# -------------------------------------------- #
#   Testado em:
#       zsh 4.4.19
#