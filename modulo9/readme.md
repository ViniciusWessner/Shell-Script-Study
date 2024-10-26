# Modulo 9 - Sistema de Usuarios
No Módulo 9 desenvolvemos um sistema de usuários utilizando Bash, o que envolveu a criação de funções para gerenciar um banco de dados de usuários. Adquiri conceitos fundamentais sobre como gravar e manipular dados em arquivos de texto, utilizando-os como um banco de dados simples.

O sistema foi projetado para utilizar um arquivo texto (```banco_de_dados.txt```) como armazenamento de dados dos usuários. Cada linha do arquivo representa um usuário, com as informações separadas por um delimitador (neste caso, o caractere dois pontos ```:```). Essa abordagem é uma forma prática de simular um banco de dados, permitindo que você armazene, recupere, insira e delete dados de maneira simples e intuitiva.

### Estrutura do meu banco de dados:

```
1:wessner:wessner@gmail.com
2:Joao:joa@gmail.com
3:Mateus:mateus@gmail.com
4:Nicolas:nicolas@gmail.com
5:carlinhos:carlinhos@gmail.com
```
Cada linha contém três campos: ID, Nome e E-mail. Essa estrutura facilita a manipulação dos dados, permitindo que você realize operações como listagem, inserção e remoção de usuários.

### Funções implementadas

Listagem de Usuários: A função ```ListaUsuarios``` lê o arquivo e exibe cada usuário, ignorando linhas em branco ou comentários.

Inserção de Usuários: A função ```InsereUsuario``` permite que novos usuários sejam adicionados ao arquivo, verificando se o usuário já existe para evitar duplicações.

Remoção de Usuários: A função ```ApagaUsuario``` busca e remove um usuário específico do arquivo, mantendo a integridade dos dados.

Ordenação dos Dados: A função ```OrdenaUsuarios``` garante que o arquivo permaneça organizado, permitindo uma melhor visualização e acesso aos dados.