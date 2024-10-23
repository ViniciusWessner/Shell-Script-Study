#! /usr/bin/env bash

# -------------------------------------------- #
#
# extraiTitulos.sh - Busca os ultimas noticias do site https://lxer.com/
# Site:  https://wessner-dev.vercel.app/
# Autor: Vinicius Wessner
# Manutenção: Vinicius
#
# -------------------------------------------- #
# Este programa realiza um webscraping com lynx fazendo um regex para extrair todos os titulos do site https://lxer.com/
#
#  Exemplos: 
#       Rodar o o script 
#            ./extractTitle.sh
#              Retorna todos os titulos do blog e salva no arquivo titulos.txt
#
# ----------------Versionamento---------------------------- #
#   Historico
#   v1.0 - 21/10/2024 - Joao
#      - Criação do script 
#   v1.1 - 18/11/2024 - Vinicius
#      -  Alterado o endpoint para consulta
#
# ------------------Testes/validacao-------------------------- #
#   Testado em:
#       zsh 4.4.19
#
# lynx instalado?
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y
# -----------------Variaveis--------------------------- #
#
ARQUIVO_DE_TITULOS="titulos.txt"

ROXO="\033[35;1m"
VERDE="\033[32;1m"

# -----------------Execucao--------------------------- #

lynx -source https://lxer.com/ | grep blurb | sed 's/<div.*line">//g; s/<\/span.*//g' > titulos.txt

while read -r titulo_lxer
do
    echo -e "${VERDE} Titulo: ${ROXO}$titulo_lxer"
done <"$ARQUIVO_DE_TITULOS"