#! /usr/bin/env bash

# ListaUsusios.sh - Extrai usuários do /etc/passwd

# Site:  https://wessner-dev.vercel.app/
# Autor: Vinicius Wessner
# Manutenção: Seu nome ou de outro colega

# -------------------------------------------- #
# Irá extrair todos os usuários do /etc/pwd para que possamos trazer otimas informações
#
#  Exemplos: 
#       Rodar o o script 
#            ./listaUsuarios.sh -s -m
#             Neste exemplo ficará em maiusculo e em ordem alfabetica
#
# -------------------------------------------- #
#   Historico
#
#   v1.0 - 21/10/2024 - Vinicius W
#      - Criação do script 
#   v1.1 - 21/10/2024 - Vinicius W
#      - Alteramos de IF para CASE 
#      - Adicionamos basename
#      - Colocamos -s, -h, -v
#   v1.2 - 21/10/2024 - Vinicius W
#      - Adicionado duas variaveis
#      - Adicionado a flag -m
#   v1.3 - 21/10/2024 - Vinicius W
#      - Adicionado While com shift e teste de variavel
#      - Adicionado 2 flags
# -------------------------------------------- #
#   Testado em:
#       zsh 4.4.19
#
# ---------------Variaveis-------------------- #
#
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
    $(basename $0) - [opções]

    -h - Menu de Ajuda
    -v - Versão
    -s - Ordenar a Saida
    -m - Retorna usuários em MAIUSCULO
"
VERSAO="v1.3"
CHAVE_ORDENA=0
CHAVE_MAIUSCULA=0
# -------------Execução------------------------#
set -x
while test -n "$1"
do
    case "$1" in 
        -h) echo "$MENSAGEM_USO" && exit 0 ;;
        -v) echo "$VERSAO" && exit 0;;
        -s) CHAVE_ORDENA=1  ;;
        -m) CHAVE_MAIUSCULA=1;;
        *) echo "opção invalida. Digite ./$(basename $0) -h para visualizar o menu de ajuda" && exit 1 ;;
    esac
    shift
done

[ $CHAVE_ORDENA -eq 1 ] &&  USUARIOS=$(echo "$USUARIOS" | sort)
[ $CHAVE_MAIUSCULA -eq 1 ] && USUARIOS=$(echo "$USUARIOS"| tr [a-z] [A-Z])

echo "$USUARIOS"
set +x
#
#
# -------------------------------------------- #