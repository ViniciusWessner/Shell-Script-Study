# Modulo 6 - Expressão Regulares

As expressões regulares (regex) são sequências de caracteres que formam um padrão de busca. Elas são amplamente utilizadas para manipulação de texto, validação de dados e pesquisa em strings. Este documento aborda conceitos básicos e avançados sobre expressões regulares, além de exemplos práticos.

Conceitos Básicos:

- ^: Representa o início de uma linha.
- $: Representa o fim de uma linha.
- .: Curinga que representa qualquer caractere.
- +: O caractere anterior deve aparecer uma ou mais vezes.
- []: Lista de caracteres; corresponde a qualquer um deles.
- [^]: Negação da lista de caracteres; corresponde a qualquer caractere que não esteja na lista.
- |: Operador "ou".
- .*: Curinga para qualquer sequência de caracteres (zero ou mais).
- *: O caractere anterior pode aparecer em qualquer quantidade.
- {n,m}: O caractere anterior deve aparecer entre n e m vezes.

Exemplos de Expressões Regulares:

2. Exemplos Práticos com grep

- ```grep "^we" /etc/passwd```: Tudo que inicia com "we" dentro do diretório /etc/passwd.
- ```grep "h$" /etc/passwd```: Tudo que termina com "h" dentro do diretório /etc/passwd.

- ```grep "^w.*h$" /etc/passwd```: Combina tudo que começa com "w", possui qualquer coisa no meio, e termina com "h".

- ```grep "^s[^y]" /etc/passwd```: Tudo que começa com "S" e a segunda letra não seja "Y".

- ```grep "^s[abc]" /etc/passwd```: Tudo que começa com "S" e a segunda letra seja "A", "B" ou "C".

- ```grep "^.[a]" /etc/passwd```: Qualquer letra na primeira posição, mas a segunda deve ser obrigatoriamente "A".

- ```grep "^.[a|e]" /etc/passwd```: Qualquer letra na primeira posição, mas a segunda deve ser "A" ou "E".


3. Expressões Regulares Estendidas com egrep
Para utilizar expressões regulares estendidas, emprega-se o comando egrep:

- ```egrep "^.{50,}$" /etc/passwd ```: Tudo que inicia com qualquer coisa, tem pelo menos 50 caracteres, e termina com qualquer coisa.
- ```egrep "^.{50,60}$" /etc/passwd```: Tudo que inicia com qualquer coisa, tem entre 50 e 60 caracteres, e termina com qualquer coisa.


### Para fins de conhecimentos realizaei um desafio proposto

```
#começam com a letra "r" no arquivo /etc/group
cut -d : -f 1 /etc/group | grep "^r"  

#que terminem com a letra "t"
cut -d : -f 1 /etc/group | grep "t$" 

#que comecem com a letra "r" e terminem com a letra "t"
cut -d : -f 1 /etc/group | grep "^r.*t$" 

#que terminam com a letra "e" ou "d"
cut -d : -f 1 /etc/group | grep "[ed]$" 

#que começam com qualquer dígito e a segunda letra seja um "u" ou "d"
cut -d : -f 1 /etc/group | grep "^.[u|d]" 

#que tenha seu nome de 2 a 4 dígitos de tamanho
cut -d : -f 1 /etc/group | egrep "^.{2,4}$"

#que comecem com "r" ou "s" (use o operador OR)
cut -d : -f 1 /etc/group | egrep "^[r OR s]"
```

As expressões regulares são uma ferramenta poderosa para trabalhar com strings. Compreender seus componentes e como aplicá-los em comandos do Linux, como grep e egrep, pode aumentar significativamente sua eficiência na manipulação de dados textuais.

