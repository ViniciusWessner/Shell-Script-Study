#! /usr/bin/env bash

# -------------------------------------------- #
#
# extraiTitulos.sh - Busca cupom semanal dos cursos do mateus linux
# Site:  https://wessner-dev.vercel.app/
# Autor: Vinicius Wessner
# Manutenção: Vinicius
#
# -------------------------------------------- #
# Este script tem como objetivo buscar diretamente no site do mateus o cupom de desconto semanal exibidos no site https://mateusmuller.me/cursos/
#
#  Exemplos: 
#       Rodar o o script 
#            ./desafioLynx.sh
#              Retorna o cupom de desconto atualizado dos cursos do mateusMuller
#
# ----------------Versionamento---------------------------- #
#   Historico
#   v1.0 - 21/10/2024 - Joao
#      - Criação do script 
#
# ------------------Testes/validacao-------------------------- #
#   Testado em:
#       zsh 4.4.19
#
# lynx instalado?
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y
# -----------------Variaveis--------------------------- #
#
ARQUIVO_DE_CUPONS="cupomDaSemana.txt"

VERDE="\033[32;1m"
RESET='\033[0m'
# -----------------Execucao--------------------------- #


lynx -source https://mateusmuller.me/cursos/ | grep -o '<p>Cupom da semana: <strong>.*</strong></p>' | sed 's/<p>Cupom da semana: <strong>\(.*\)<\/strong><\/p>/\1/' > cupomDaSemana.txt

while read -r cupomCursosMateus
do

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo " O cupom desta semana para     "
echo " os cursos do Mateus é:        "
echo -e "${VERDE}$cupomCursosMateus${RESET}"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"


done <"$ARQUIVO_DE_CUPONS"