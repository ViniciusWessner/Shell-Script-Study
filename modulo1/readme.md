
# Modulo 1 - Fundamentos do bash

Neste módulo, aprendi os fundamentos do Bash scripting, uma poderosa ferramenta para automação de tarefas no sistema operacional Linux. Explorei o uso de variáveis e como manipulá-las, incluindo operações matemáticas simples e a utilização de variáveis especiais, como $0 para o nome do script e $$ para o PID do processo em execução.

```
#!/usr/bin/env bash

NOME_SCRIPT=$0
PID_PROCESSO=$$

echo "Nome do script: $NOME_SCRIPT"
echo "PID do processo: $PID_PROCESSO"
```
Esse snippet exibe o nome do script e o PID do processo, facilitando o rastreamento de execuções.

Estudei também as estruturas condicionais, que permitem a execução de diferentes blocos de código com base em certas condições. Aprendi a usar if, elif, e else para estruturar a lógica condicional, além de testar diferentes sintaxes para comparação de variáveis e valores. Por exemplo:

```
#!/usr/bin/env bash

VAR1="abc"
VAR2="xyz"

if [[ "$VAR1" == "$VAR2" ]]; then
    echo "As variáveis são iguais."
else
    echo "As variáveis são diferentes."
fi

```

Esse código compara duas variáveis e imprime uma mensagem indicando se são iguais ou não.

A prática com laços de repetição (for e while) foi essencial para entender como percorrer listas, arrays e até mesmo arquivos em um diretório. Experimentei o comando seq para gerar sequências de números e observei como esses laços podem ser úteis na contagem de elementos e no controle de iterações com condições específicas. Por exemplo:

```
#!/usr/bin/env bash

for i in $(seq 1 5); do
    echo "Contador: $i"
done

```
Esse snippet gera uma contagem de 1 a 5 e imprime cada valor.

Outro conceito fundamental foi a manipulação de parâmetros e argumentos. Aprendi a acessar parâmetros passados ao script, como $1, $2, e $*, e entendi como contar o número de argumentos com $#. Esses recursos são valiosos para criar scripts mais flexíveis e personalizados. Por exemplo:

```
#!/usr/bin/env bash

echo "Primeiro parâmetro: $1"
echo "Segundo parâmetro: $2"
echo "Todos os parâmetros: $*"
echo "Número de parâmetros: $#"
```

Além disso, conheci o conceito de comando de saída e a utilidade do valor de saída de um comando ($?). Entendi que isso ajuda a verificar o sucesso ou falha de comandos e pode ser usado para implementar verificações de erros:
```
#!/usr/bin/env bash

ls /diretorio_qualquer
if [[ $? -ne 0 ]]; then
    echo "Erro: O diretório não foi encontrado."
fi
```
Por fim, também explorei a busca de informações no sistema, como o uso do grep para encontrar uma string específica em um arquivo, o que me deu insights sobre como usar o Bash para automatizar verificações e manipulação de dados em texto:

```
#!/usr/bin/env bash

USUARIO=$(grep 'wessner' /etc/passwd)
echo "Informações do usuário: $USUARIO"
```