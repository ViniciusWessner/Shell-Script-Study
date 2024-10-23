#! /usr/bin/env bash

# desafio-utility.sh - Retorna um menu de utilitarios

# Site:  https://wessner-dev.vercel.app/
# Autor: Vinicius Wessner
# Manutenção: Seu nome ou de outro colega

# -------------------------------------------- #
# Irá exibir informações do sistema como uso de disco, processos em execução e status da rede.
#
#  Exemplos: 
#       Rodar o o script 
#            ./desafio-utility.sh -m
#             Neste exemplo retorna o uso de disco
#
# -------------------------------------------- #
#   Historico
#
#   v1.0 - 21/10/2024 - Vinicius W
#      - Criação do script 
# -------------------------------------------- #
#   Testado em:
#       zsh 4.4.19
#
# ---------------Variaveis-------------------- #
#
MENSAGEM_USO="
    $(basename $0) - [opções]

    -h  - Menu de Ajuda
    -v  - Versão
    -d  - Mostrar uso de disco
    -p  - Listar processos em execução
    -n  - Mostrar status da rede
    -m  - Verificar uso de memória
"
VERSAO="v1.0"
NIVEL_DEBUG=0
# -------------Funcoes------------------------#

Debugar () {
  [ $1 -le $NIVEL_DEBUG ] && echo "Debug $* ------"
}

# -------------Execução------------------------#
while test -n "$1"
do
    case "$1" in
        
        -h)echo "$MENSAGEM_USO" && exit 0 ;;
        
        -v)echo "$VERSAO" && exit 0 ;;
        
        -d)echo "Uso de Disco:"
            df -h && exit 0 ;;
        
        -p)echo "Processos em execução:"
            ps aux && exit 0 ;;
        
        -n)echo "Status da Rede:"
            ip a && exit 0 ;;
        
        -m) echo "Uso de Memória:"
            free -h && exit 0 ;;
        
        *) echo "Opção inválida. Digite ./$(basename $0) -h para visualizar o menu de ajuda." && exit 0 ;;
    esac
    shift

echo "Insira o -h no final do comando -h para inserirmos"

done
