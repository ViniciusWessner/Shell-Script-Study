#! /usr/bin/env bash

# Sempre tentar deixar o comentario o menor possivel e de uma forma simples para que todos que acessem consigam entender o que cada funcao faz

# ERRADO
# Lynx instalado? se sim, ele fará X coisas se nao ele nao realizará nenhum procedimento e retornaraá um certo erro
[ ! -x "$(which linx)" ] 

# CORRETO
# Lynx instalado?
[ ! -x "$(which linx)" ] 



