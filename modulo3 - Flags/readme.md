# Modulo 3 - Flags

Neste módulo, aprofundei meu conhecimento sobre o uso de flags em scripts Bash, aprendendo a criar e manipular opções personalizadas para tornar o script mais flexível e amigável ao usuário. A inclusão de flags permite controlar o comportamento do programa de forma direta e organizada, com opções específicas para cada funcionalidade. No script de exemplo, usei as seguintes flags:

```
-h) echo "$MENSAGEM_USO" && exit 0 ;;
-v) echo "$VERSAO" && exit 0 ;;
-s) CHAVE_ORDENA=1 ;;
-m) CHAVE_MAIUSCULA=1 ;;
 *) echo "Opção inválida. Digite ./$(basename $0) -h para visualizar o menu de ajuda." && exit 1 ;;

```
Uso de while e shift: Utilizei o while em conjunto com o shift para iterar pelas opções passadas ao script, de modo que cada flag fosse tratada de forma independente. O shift ajuda a avançar para o próximo argumento, garantindo que o script lide adequadamente com múltiplas opções.

Flexibilidade com variáveis de controle: Atribuir valores específicos às variáveis CHAVE_ORDENA e CHAVE_MAIUSCULA com base nas flags recebidas permitiu modular o script para ativar ou desativar funcionalidades conforme a necessidade do usuário.

Organização de saída e mensagens de erro: Incluí mensagens de ajuda e erro, que garantem que o usuário compreenda as opções disponíveis. Por exemplo, uma mensagem personalizada é exibida para -h, detalhando o uso de cada flag, enquanto uma mensagem de "opção inválida" guia o usuário a utilizar -h para mais informações.
