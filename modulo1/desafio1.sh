#!/usr/bin/env bash
echo "====== while"

#Um laço que conte de 0 a 10
contador=0
while [[ $contador -le 10 ]]; do
    echo "Contador: $contador"
    # A cada iteração, verifique se o número é divisível por 2
    if [ $(($contador % 2)) -eq 0 ]; then
        # Se ele for divisível por 2, escreva uma mensagem na tela confirmando isso
        echo "$contador é divisivel por 2"
    fi
    contador=$((contador+1))
done



