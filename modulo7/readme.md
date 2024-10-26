# Modulo 7 - Extração de Dados com REGEX e Lynx

Este módulo explora a extração de dados de websites utilizando a ferramenta lynx e expressões regulares (regex). O objetivo é demonstrar como automatizar o processo de web scraping, essencial para coletar informações de páginas da web de maneira eficiente e eficaz.

Durante o desenvolvimento deste módulo, adquiri conhecimentos fundamentais nas seguintes áreas:

1. Web Scraping com Lynx
- Conceito de Web Scraping: Entendi a importância de coletar dados da web de forma automatizada e como isso pode ser útil para pesquisa, análise de dados e monitoramento de conteúdo.

- Uso do Lynx: Aprendi a usar o lynx, um navegador de texto, para acessar e extrair o conteúdo HTML de páginas da web sem a necessidade de um navegador gráfico.

2. Expressões Regulares (Regex)

- Poder das Regex: Compreendi como as expressões regulares podem ser usadas para buscar e manipular texto, facilitando a extração de dados específicos em meio a grandes volumes de informações.

- Sintaxe e Operadores: Aprendi sobre os diferentes operadores e suas aplicações, como ^, $, .*, e outros, para criar padrões complexos que podem ser usados em busca e filtragem de dados.

3. Automação de Processos

- Automatização de Tarefas: Desenvolvi habilidades em automatizar tarefas de coleta de dados, reduzindo o tempo e o esforço necessários para obter informações manualmente.

- Manipulação de Dados: Adquiri experiência em processar dados extraídos e formatá-los para apresentação ou armazenamento, utilizando ferramentas como grep e sed.

### Script desenvolvido
O script ```extraiTitulos.sh``` busca os últimos títulos de notícias do site lxer.com. Ele utiliza lynx para obter o conteúdo da página e grep com expressões regulares para filtrar os títulos.

### Desafio Proposto
Com base em todos os conhecimentos adquiridos durante o curso, o desafio consistia em aplicar as ferramentas e técnicas apresentadas para realizar a extração de dados de um site específico.

Para este desafio, decidi focar na extração do cupom de desconto disponibilizado semanalmente pelo professor em seu site. Essa escolha não apenas me permitiu praticar as habilidades de web scraping, mas também resultou em um recurso prático que pode ser utilizado para aproveitar ofertas em cursos da Udemy.

Através da utilização do lynx e expressões regulares, consegui automatizar o processo de coleta do cupom, demonstrando a aplicação dos conceitos de programação e extração de dados em um cenário real. Essa experiência reforçou minha capacidade de utilizar ferramentas de linha de comando para resolver problemas do dia a dia e aprimorar meu conhecimento em automação de tarefas.

[Visualizar o Script completo](https://github.com/ViniciusWessner/shell-script-course/blob/main/modulo7/desafioLynx.sh)