#! /usr/bin/env bash

#A quebra de comandos seria para deixar visivelmente o comando melhor de ler e também entender qual é a finalidade dele
fin / -iname "*.so" \
    -user wessner   \
    -type f         \
    -size +1M       \ 
    -exec ls {}     \; 



