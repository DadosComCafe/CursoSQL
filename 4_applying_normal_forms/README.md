# Formas normais

## Para garantir que nossas tabelas possam atingir as formas normais, devemos satisfazer as seguintes condições 

* __Primeira Forma Normal (1FN):__
    Identificação das entidades e atributos: Analise a estrutura da tabela para identificar as entidades (tópicos principais) e seus atributos (informações sobre essas entidades). Garantir valores atômicos: Certifique-se de que cada célula contenha apenas um valor, evitando estruturas de dados complexas como arrays, listas ou objetos aninhados. Cada coluna deve conter apenas valores únicos e atômicos.

    Remover repetições de grupos: Evite repetições de informações, separando-as em diferentes tabelas, se necessário. Cada entidade deve ser representada por uma única tabela.

* __Segunda Forma Normal (2FN):__
    Já estar na 1FN: A tabela precisa estar na primeira forma normal antes de avançar para a segunda. Se necessário, aplique as transformações para garantir a 1FN.
    Chaves candidatas e dependência total: Identifique as chaves candidatas (conjunto mínimo de colunas que podem identificar unicamente uma linha) e certifique-se de que todos os atributos não primários são totalmente dependentes da chave primária, eliminando dependências parciais.

* __Terceira Forma Normal (3FN):__
Estar na 2FN: A tabela precisa estar na segunda forma normal antes de avançar para a terceira. Se necessário, aplique as transformações para garantir a 2FN.
Remover dependências transitivas: Verifique se não há dependências transitivas, ou seja, nenhum atributo não chave deve ser dependente de outro atributo não chave. Se houver, separe esses atributos em tabelas distintas.

