Expressao regulares

^ - Pega tudo que temos no comço
$ - Busca tudo que possui no final

^a - Pega tudo que inicia com a letra a

h$ - Busca tudo que finaliza com a letra h

^[bc] - Busca tudo que comeca com "b" ou "c" dentro de uma determianda lista

^[^bc] - Desta forma criamos uma NEGAÇÃO então vamos buscar tudo que comece que não seja B ou C


Exemplos: 

grep "^we" /etc/passwd  - Tudo que inicia com "we" dentro do diretorio /etc/passwd

grep "h$" /etc/passwd - Tudo que termina com "h" dentro do diretorio /etc/passwd

grep "^w.*h$" /etc/passwd - Nesse caso combinamos tudo que começa com "w" (^ w) tem qualquer coisa no meio( . *) e termina com "h" (h$)

grep "^s[^y]" /etc/passwd - Tudo que começe com S e a segunda letra não seja Y

grep "^s[abc]" /etc/passwd - Tudo que comeca com S e a segunda letra seja A B ou C

grep "^.[a]" /etc/passwd - Pode iniciar com qualquer letra, mas a segunda deve ser obrigatoriamente a letra A

grep "^.[a|e]" /etc/passwd - Pode iniciar com qualquer letra, mas a segunda deve ser obrigatoriamente a letra A ou E


Exempressao regulares extendidas:

Esse é um exemplo de espressao regular extendida, para esses casos funcionarem, devemos usar o egrap

egrep "^.{50,}$" /etc/passwd - Tudo que inicia com qualquer coisa, tem 50 caracteres, e termina com qualquer coisa
egrep "^.{50,60}$" /etc/passwd - Tudo que inicia com qualquer coisa, tem entre 50 e 60 caracteres , e termina com qualquer coisa