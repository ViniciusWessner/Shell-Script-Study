# Modulo 4 - Debug

No módulo 4, aprofundei meus conhecimentos em debugging de scripts Bash, aprendendo a utilizar set -x e set +x para rastrear a execução do código em diferentes pontos. Essas ferramentas de debug ajudam a visualizar comandos e variáveis enquanto o script é executado, permitindo identificar rapidamente onde ocorrem erros ou comportamentos inesperados.


### Principais Aprendizados e Implementações:

Utilização de set -x e set +x para Debugging

- O comando set -x habilita o modo de debug, exibindo cada comando executado junto com sua expansão. Ele é útil para rastrear a execução linha a linha e é particularmente eficaz quando combinado com seções específicas do código.

- Após o trecho a ser inspecionado, set +x desativa o modo de debug, evitando a exibição excessiva de informações.

Função de Debug Personalizada

- Criei a função Debugar para flexibilizar o nível de detalhe das mensagens de debug com base no valor de uma variável (NIVEL_DEBUG ou DEBUG_MODE).

- Essa função permite que o usuário controle o nível de detalhes das mensagens de debug, tornando o script mais personalizável para diferentes cenários de uso.


### Exemplos de Scripts com Debugging

1. listaUsuarios.sh

No script listaUsuarios.sh, além das funcionalidades básicas de listar usuários e aplicar flags de ordenação e maiúsculas, adicionei set -x e set +x em pontos específicos do código. Isso facilita a identificação de problemas na manipulação das flags e na extração dos dados do arquivo /etc/passwd.

Exemplo de uso:

```
./desafio-utility.sh -m -d 1
```
Neste exemplo, o comando retorna o uso de memória com o modo de debug ativado no nível 1, exibindo as mensagens detalhadas especificadas na função Debugar.

Esses scripts me proporcionaram uma compreensão sólida de como aplicar técnicas de debug de maneira eficiente e personalizada, melhorando significativamente a capacidade de identificar e solucionar problemas complexos em Bash.