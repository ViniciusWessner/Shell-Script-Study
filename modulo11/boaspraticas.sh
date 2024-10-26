# Portabilidade
#!/usr/bin/env bash

#Evitar quebra de strings, se criou com strings, implementa com strings
VARIAVEL_TESTE="VINICIUS WESSER"
echo "$VARIAVEL_TESTE"


# Se for somente uma condicional, utilizar o modo curto
[ -z "$VARIAVEL_TESTE" ] && echo "Vazio"


# Sempre que executar comando shell use $() porque é mais facil identificar
# Alguem pode confundir com aspas simples.
echo $(which python) #sim
echo `which python` #nao

# Usar sempre a contrabarra para quebrar comandos grandes
# acao=$(dialog --title "Gerenciamento de Usuarios" \
#                 --stdout \
#                 --menu "Escolha uma das opcoes abaixo" \
#                 0 0 0 \
#                 listar "Listar todos os usuarios cadastrados" \
#                 remover "Remover um usuario do sistema" \
#                 inserir "Inserir um novo usuario no sistema")

# Evitar o maximo uso de pipes para nao afetar o desempenho, em programas pequenos é bem de boas, mas em scripts grandes com retornos grandes, acaba ficando ruim e nao é uma boa pratica
cat /etc/passwd | grep vini
grep vini /etc/passwd

# Usar o Here Document para atribuir textos grandes
VAR1="$(cat << EOF
    aqui podemos
  escrever 
        livremente!
EOF
)"