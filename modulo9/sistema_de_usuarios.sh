#! /usr/bin/env bash

# sistema_de_usuarios.sh - [breve descricao]

# Site:  https://wessner-dev.vercel.app/
# Autor: Vinicius Wessner
# Manutenção: Vinicuis

# -------------------------------------------- #
# [Uma boa descricao sobre meu programa e as funcionalidades]
#
#  Exemplos: 
#       Rodar o o script 
#            ./sistema_de_usuarios.sh
#              [o que acontecera]
#
# -------------------------------------------- #
#   Historico
#   v1.0 - 21/10/2024 - Joao
#      - Criação do script 
#
# ----------------Variaveis---------------------------- #
#
ARQUIVO_BANCO_DE_DADOS="banco_de_dados.txt"
VERDE="\033[32;1m"
VERMELHO="\033[31;1m"
TEMP=temp.$$
SEP=:
#
# -----------------Testes--------------------------- #
#
[ ! -e "$ARQUIVO_BANCO_DE_DADOS" ] && echo "Erro. Arquivo de dados nao encontrado" && exit 1
[ ! -r "$ARQUIVO_BANCO_DE_DADOS" ] && echo "Erro. Arquivo nao tem permissao de leitura" && exit 1
[ ! -w "$ARQUIVO_BANCO_DE_DADOS" ] && echo "Erro. Arquivo nao tem permissao de escrita" && exit 1
#
# -----------------Funcoes--------------------------- #
#
MostraUsuario () {
        local id=$(echo $1 | cut -d $SEP -f 1)
        local nome=$(echo $1 | cut -d $SEP -f 2)
        local email=$(echo $1 | cut -d $SEP -f 3)

        echo -e "${VERDE}ID: ${VERMELHO}$id"
        echo -e "${VERDE}Nome: ${VERMELHO}$nome"
        echo -e "${VERDE}E-mail: ${VERMELHO}$email"
}

ListaUsuarios () {
    while read -r linha
    do
        [ "$(echo $linha | cut -c1)" = "#" ] && continue
        [ ! "$linha" ] && continue
        MostraUsuario "$linha"
    done < "$ARQUIVO_BANCO_DE_DADOS"
}

ValidaUsuarioExiste () {
    grep -i -q "$1$SEP" "$ARQUIVO_BANCO_DE_DADOS"
}

InsereUsuario () {
    local nome="$(echo $1 | cut -d $SEP -f 2)"

    if ValidaUsuarioExiste "$nome"
    then 
        echo "Erro. Usuario ja existe"
    else
        echo "$*" >> "$ARQUIVO_BANCO_DE_DADOS"
        echo "Usuario Cadastrado com sucesso"
    fi
    OrdenaUsuarios
}

ApagaUsuario () {

    ValidaUsuarioExiste "$1" || return

    grep -i -v "$1$SEP" "$ARQUIVO_BANCO_DE_DADOS" > "$TEMP"
    mv "$TEMP" "$ARQUIVO_BANCO_DE_DADOS"
    
    echo "Usuario Removido"
    OrdenaUsuarios
}

OrdenaUsuarios () {
    sort "$ARQUIVO_BANCO_DE_DADOS" > "$TEMP"
    mv "$TEMP" "$ARQUIVO_BANCO_DE_DADOS"


}