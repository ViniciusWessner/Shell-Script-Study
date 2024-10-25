#!/bin/bash

# registro_ponto.sh - Registro de ponto
# Autor: Vinicius Wessner
# Data: 24/10/2024
# Manutenção: @vinicius.wessner

# -------------------------------------------- #
# Este programa será responsável por registrar entradas e saidas de pontos em um banco de dados 
#
#  Exemplos: 
#       Rodar o o script 
#            ./registro_ponto.sh entrada
#               vai registrar o ponto de entrada
#
#            ./registro_ponto.sh saida
#               vai registrar o ponto de saida
#
# --------------------Historico------------------------ #
#   
#   v1.0 - 21/10/2024 - Vinicius wessner
#      - Criação do script 
#
# ------------------Variaveis-------------------------- #
ARQUIVO_REGISTRO="registra_horas.txt"
VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
SEP=:
DATA=$(date +%Y-%m-%d)
HORA_ATUAL=$(date +%H:%M)

# -----------------Testes--------------------------- #
[ ! -e "$ARQUIVO_REGISTRO" ] && echo "Erro. Arquivo de dados nao encontrado" && exit 1
[ ! -r "$ARQUIVO_REGISTRO" ] && echo "Erro. Arquivo nao tem permissao de leitura" && exit 1
[ ! -w "$ARQUIVO_REGISTRO" ] && echo "Erro. Arquivo nao tem permissao de escrita" && exit 1
[ -x "$(which dialog)" ] && sudo apt install dialog 1> /dev/null 2>&1

# -----------------Funções--------------------------- #
RegistrarEntrada() {
    echo "${DATA}${SEP}Entrada${SEP}${HORA_ATUAL}" >> "$ARQUIVO_REGISTRO"
    dialog --msgbox "Horário de entrada registrado às $HORA_ATUAL" 6 40
}

RegistrarSaida() {
    echo "${DATA}${SEP}Saída${SEP}${HORA_ATUAL}" >> "$ARQUIVO_REGISTRO"
    dialog --msgbox "Horário de saída registrado às $HORA_ATUAL." 6 40
}

# -----------------Execucao--------------------------- #
while :
do
    acao=$(dialog --title "Registro de Pontos" \
                  --stdout \
                  --menu "Escolha uma das opcoes abaixo" \
                  0 0 0 \
                  entrada "Registrar Entrada" \
                  saida "Registrar Saída")
    [ $? -ne 0 ] && exit
    case $acao in 
        entrada) RegistrarEntrada ;;
        saida) RegistrarSaida ;;
    esac
done