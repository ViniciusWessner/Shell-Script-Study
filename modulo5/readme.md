# Modulo 5 - Cores

No módulo 5, aprendi sobre a implementação de cores em scripts Bash, o que não apenas embeleza a saída, mas também facilita a distinção entre diferentes tipos de mensagens (como debug, erro e informação) durante a execução do script.

Principais Aprendizados e Implementações:

Utilizei códigos de escape ANSI para definir cores, como roxo e verde, e declarei variáveis para cada cor. Isso torna o código mais legível e fácil de manter, pois posso aplicar as cores sem repetir códigos de escape diretamente nas mensagens.

```
ROXO="\033[35;1m"   # Cor roxa
VERDE="\033[32;1m"  # Cor verde

```

Função de Debug com Cores

A função Debugar agora aceita cores como parâmetros, permitindo que as mensagens de debug sejam exibidas em diferentes cores dependendo do contexto. Isso melhora a visibilidade e a clareza das informações durante a execução.

```
Debugar () {
  [ $1 -le $NIVEL_DEBUG ] && echo -e "${2}Debug $* ------"
}
```

Exemplo de Uso de Cores

Durante a execução do loop na função Soma, utilizei as cores para destacar informações específicas. Mensagens de debug relacionadas à entrada do loop são exibidas em roxo, enquanto a soma total é exibida em verde.

```
for i in $(seq 1 25); do
    Debugar 1 "${ROXO}" "Entrei no for com o valor: $i"
    total=$(($total+$i))
    Debugar 2 "${VERDE}" "Depois da soma: $total"
done
```

### Benefícios da Implementação de Cores

- Facilidade de Leitura: Mensagens coloridas ajudam a separar informações importantes, tornando mais fácil identificar erros ou entender o fluxo do programa.

- Atração Visual: A utilização de cores torna a saída mais atraente e envolvente para o usuário, melhorando a experiência geral.

- Personalização: Através da definição de variáveis de cor, posso facilmente ajustar a paleta de cores em todo o script, garantindo consistência visual.