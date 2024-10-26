# Modulo 10 - Dialog

Avançamos na implementação do sistema de usuários em Bash, introduzindo o uso de diálogos interativos com a ferramenta dialog. Isso proporcionou uma interface mais amigável para interação com o usuário, permitindo operações de gerenciamento de usuários de forma mais visual e intuitiva.

A ferramenta ```dialog``` é utilizada para criar interfaces gráficas em terminal, permitindo que você apresente informações e colete dados do usuário de maneira interativa. Com isso, você transformou um script puramente textual em um sistema com janelas de diálogo que facilitam a interação.


O sistema agora apresenta um menu interativo para que os usuários possam escolher entre listar, inserir ou remover usuários. Veja como é feito o gerenciamento de usuários através do menu:
```
acao=$(dialog --title "Gerenciamento de Usuarios" \
              --stdout \
              --menu "Escolha uma das opcoes abaixo" \
              0 0 0 \
              listar "Listar todos os usuarios cadastrados" \
              remover "Remover um usuario do sistema" \
              inserir "Inserir um novo usuario no sistema")

```


