
# Boas Práticas com Desenvolvimento Bash

Neste módulo, explorei várias práticas recomendadas para criar scripts Bash que são mais legíveis, fáceis de manter e eficazes para desenvolvedores atuais e futuros. Aqui estão alguns pontos-chave:


### 1. Nome do Programa e Cabeçalho Informativo
Para melhorar a rastreabilidade do código, é recomendável incluir o nome do programa no início do script e adicionar um cabeçalho com informações sobre o propósito do script, além dos contatos do mantenedor.

```
#! /usr/bin/env bash

# cotarBitcoin.sh - Busca a última cotação do Bitcoin
# 
# Site: https://wessner-dev.vercel.app/
# Autor: Vinicius Wessner
# Manutenção: João Silva (Slack: @joao_silva)
#
# -------------------------------------------- #
# Este script acessa a API XXxxx para buscar a cotação atual do Bitcoin.
#
#  Exemplos:
#       Executar o script:
#            ./cotarBitcoin.sh
# -------------------------------------------- #
#   Histórico
#   v1.0 - 21/10/2024 - João - Criação do script
#   v1.1 - 18/11/2024 - Vinicius - Alterado o endpoint para consulta
# -------------------------------------------- #
#   Testado em:
#       zsh 4.4.19
```
Esse cabeçalho fornece uma visão geral rápida, com documentação de versão, autor, mantenedor, e o ambiente de teste.

### 2. Versionamento do Script
Cada alteração feita no script deve ser registrada no cabeçalho, com a numeração de versão seguindo um padrão. Alterações menores podem ser incrementadas na parte decimal (por exemplo, 1.0 para 1.1), enquanto alterações maiores alteram a versão inteira (por exemplo, 1.0 para 2.0).

### 3. Estrutura e Identação
Para maximizar a legibilidade, a estrutura e identação do código são essenciais, especialmente ao usar estruturas de controle. Abaixo estão exemplos de um código mal estruturado e uma versão com identação ideal:

```
# Exemplo com má identação
if [ $PARAMETRO -gt 0 ]; then if [ $PARAMETRO -gt 1 ]; then if [ $PARAMETRO -gt 2 ]; then echo "ola"; fi; fi; fi

# Exemplo com identação ideal
if [ $PARAMETRO -gt 0 ]; then
    if [ $PARAMETRO -gt 1 ]; then
        if [ $PARAMETRO -gt 2 ]; then
            echo "Olá"
        fi
    fi
fi

```

### 4. Comentários: Simplicidade e Clareza
Comentários devem ser simples e objetivos. Comentários extensos devem ser evitados, pois podem confundir mais do que ajudar. Abaixo, um exemplo de comentário sucinto:

```
# CORRETO: Lynx instalado?
[ ! -x "$(which lynx)" ]
```

### 5. Testado Onde?
É recomendável incluir o ambiente de teste do script, como ZSH, BASH, e a versão, para que outros saibam onde ele foi verificado.

### 6. Estruturação e Quebra de Comandos
Comandos longos podem ser quebrados em várias linhas para melhorar a legibilidade e facilitar a compreensão:

```
find / -iname "*.so" \
    -user wessner   \
    -type f         \
    -size +1M       \
    -exec ls {}     \;
```