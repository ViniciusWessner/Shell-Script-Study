#https://lxer.com/

#<div class="blurb">
#<span class="storyheadline">

#sudo apt install lynx -y

#lynx -source https://lxer.com/ - busca o site inteiro

#lynx -source https://lxer.com/ | grep blurb

#tail -n 1 titulos.txt | sed 's/<div.*line">//g' (retorno = Richard Stallman is Going to Peru to Deliver Many Talks</span></a></h2><ul class="meta">)


#tail -n 1 titulos.txt | sed 's/<div.*line">//g' | sed 's/\</span.*//'     

#substituindo tudo que comece com div e termine com line por nada ; ponto e virgula; para a nova expressao -> que comece com span e tenha qualquer coiSA
#tail -n 1 titulos.txt | sed 's/<div.*line">//g; s/<\/span.*//g'
