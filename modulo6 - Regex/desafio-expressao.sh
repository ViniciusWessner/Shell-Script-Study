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