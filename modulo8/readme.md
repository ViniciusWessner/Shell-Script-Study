# Modulo 8 - Parser

No Módulo 8, aprendi a utilizar parsers de arquivos de configuração para personalizar o comportamento de scripts em Bash. O objetivo central foi desenvolver um script que lê parâmetros de um arquivo de configuração (```configuracao.cf```) e ajusta uma mensagem de teste com base nessas configurações.

O processo começa pela definição do arquivo de configuração, que contém pares de chave-valor que determinam se certas funcionalidades devem ser ativadas ou desativadas. Utilizei uma função chamada ```DefinirParametros```, responsável por interpretar cada linha do arquivo, ignorando comentários e linhas em branco. Essa função usa comandos como ```cut``` para separar as chaves dos valores e armazená-los em variáveis correspondentes, como ```USAR_CORES``` e ```USAR_MAIUSCULAS```.

```
# Configurações para o script
USAR_CORES=1
USAR_MAIUSCULAS=0
```

A leitura do arquivo foi feita de forma sequencial, garantindo que o script só processasse linhas válidas. Uma vez que os parâmetros foram lidos, o script ajusta a mensagem de teste. Se a opção para usar letras maiúsculas estiver ativada, a mensagem é convertida; se a opção de cores estiver habilitada, a mensagem é exibida em uma cor específica. O trecho de código abaixo demonstra essa lógica:

```
if [ "$USAR_MAIUSCULAS" = "1" ]; then
    MENSAGEM="$(echo $MENSAGEM | tr a-z A-Z)"
fi

if [ "$USAR_CORES" = "1" ]; then
    MENSAGEM="$(echo -e ${VERMELHO}$MENSAGEM)"
fi
```

Esse módulo me proporcionou uma compreensão mais profunda sobre manipulação de arquivos em Bash, destacando a importância de verificar permissões e a existência de arquivos antes de operá-los. Aprendi também a criar funções para organizar o código, facilitando a leitura e manutenção. Além disso, essa prática reforçou o conceito de personalização em scripts, permitindo que diferentes usuários ajustem o comportamento do script conforme suas necessidades.