#! /usr/bin/env bash

# desafio-utility.sh - Retorna um menu de utilitarios

# Site:  https://wessner-dev.vercel.app/
# Autor: Vinicius Wessner

# -------------------------------------------- #
# Irá exibir informações do sistema como uso de disco, processos em execução e status da rede.
#
#  Exemplos: 
#       Rodar o o script 
#            ./desafio-utility.sh -m
#               Neste exemplo retorna o uso de disco
#            ./DesafioDebug.sh -m -d 1
#               Neste exemplo a flag -m verifica a memoria e a flag -d 1 ativa o debug
#
# -------------------------------------------- #
#   Historico
#
#   v1.0 - 21/10/2024 - Vinicius W
#      - Criação do script 
#   v1.0 - 23/10/2024 - Vinicius W
#      - Criação da funcionalidade de debug flag -d 1 
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
    -l  - Mostrar uso de disco
    -p  - Listar processos em execução
    -n  - Mostrar status da rede
    -m  - Verificar uso de memória
    -d <Nivel de Debug>  - Ativar modo debug
"
VERSAO="v1.0"
DEBUG_MODE=0
# -------------Funcoes------------------------#

Debugar () {
  [ $1 -le $DEBUG_MODE ] && echo "Debug $* ------"
}

# -------------Execução------------------------#
while test -n "$1"
do
    case "$1" in
        -h) echo "$MENSAGEM_USO" && exit 0 ;;
        
        -v) echo "$VERSAO" && exit 0 ;;
        
        -d) Debugar 1 "Verificando uso de disco"
            set -x 
            echo "Uso de Disco:"
            df -h
            set +x 
            exit 0 ;;
        
        -p) Debugar 1 "Listando processos em execução"
            set -x
            echo "Processos em execução:"
            ps aux
            set +x
            exit 0 ;;
        
        -n) Debugar 1 "Mostrando status da rede"
            set -x
            echo "Status da Rede:"
            ip a
            set +x
            exit 0 ;;
        
        -m) Debugar 1 "Verificando uso de memória"
            set -x
            echo "Uso de Memória:"
            free -h
            set +x
            exit 0 ;;
        
        -d) DEBUG_MODE=1
                 echo "Modo debug ativado" ;;
        
        *) echo "Opção inválida. Digite ./$(basename $0) -h para visualizar o menu de ajuda." && exit 0 ;;
    esac
    shift
done
