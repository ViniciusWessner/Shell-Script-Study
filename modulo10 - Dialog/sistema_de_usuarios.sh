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
[ -x "$(which dialog)" ] && sudo apt install dialog 1> /dev/null 2>&1
# -----------------Funcoes--------------------------- #
#
#
ListaUsuarios () {
    egrep -v "^#|^$" "$ARQUIVO_BANCO_DE_DADOS" | sort | tr : ' ' > "$TEMP"
    dialog --title "Lista de Usuarios" --textbox "$TEMP" 20 40
    rm -rf "$TEMP"
}

ValidaUsuarioExiste () {
    grep -i -q "$1$SEP" "$ARQUIVO_BANCO_DE_DADOS"
}

InsereUsuario () {
    local ultimo_id="$(egrep -v "^#|^$" "$ARQUIVO_BANCO_DE_DADOS" | sort | tail -n 1 | cut -d "$SEP" -f 1)"
    local proximo_id=$(($ultimo_id+1))

    local nome=$(dialog --title "Cadastro de usuarios" --stdout --inputbox "Digite Seu nome" 0 0)
    [ ! "$nome" ] && exit 1

    ValidaUsuarioExiste "$nome" && {
        dialog --title "ERRO FATAL!" --msgbox "Usuario ja cadastrado no sistema" 6 40
        exit 1
    }

    local email=$(dialog --title "Cadastro de usuarios" --stdout --inputbox "Digite Seu Email" 0 0)

    echo -e "$proximo_id$SEP$nome$SEP$email" >> "$ARQUIVO_BANCO_DE_DADOS"
    OrdenaUsuarios
    dialog --title "SUCESSO!" --msgbox "Usuario cadastrado com sucesso" 6 40
}

RemoverUsuario () {
    local usuarios=$(egrep "^#|^$" -v "$ARQUIVO_BANCO_DE_DADOS" | sort -h | cut -d $SEP -f 1,2 | sed 's/:/ "/;s/$/"/' )
    local id_usuario=$(eval dialog --stdout --menu \"Escolha um usuario:\" 0 0 0 $usuarios)

    grep -i -v "^$id_usuario" "$ARQUIVO_BANCO_DE_DADOS" > "$TEMP"
    mv "$TEMP" "$ARQUIVO_BANCO_DE_DADOS"

    dialog --title "SUCESSO!" --msgbox "Usuario removido com sucesso" 6 40
    ListaUsuarios
}

OrdenaUsuarios () {
    sort -h "$ARQUIVO_BANCO_DE_DADOS" > "$TEMP"
    mv "$TEMP" "$ARQUIVO_BANCO_DE_DADOS"
}

# -----------------Execucao--------------------------- #
while :
do
    acao=$(dialog --title "Gerenciamento de Usuarios" \
                  --stdout \
                  --menu "Escolha uma das opcoes abaixo" \
                  0 0 0 \
                  listar "Listar todos os usuarios cadastrados" \
                  remover "Remover um usuario do sistema" \
                  inserir "Inserir um novo usuario no sistema")
    [ $? -ne 0 ] && exit
    case $acao in 
        listar) ListaUsuarios ;;
        inserir) InsereUsuario ;;
        remover) RemoverUsuario ;;
    esac
done