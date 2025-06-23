# Sumário
`B` - Iniciante, `A` - Avançado
* [Estruturas de Dados](./data-structures/README.pt-BR.md)
* `B` [Lista Encadeada (Linked List)](./data-structures/linked-list/README.pt-BR.md)
* `B` [Lista Duplamente Ligada (Doubly Linked List)](./data-structures/doubly-linked-list/README.pt-BR.md)
* `B` [Fila (Queue)](./data-structures/queue/README.pt-BR.md)
* `B` [Pilha (Stack)](./data-structures/stack/README.pt-BR.md)
* `B` [Tabela de Hash (Hash Table)](./data-structures/hash-table/README.pt-BR.md)
* `B` [Heap](./data-structures/heap/README.pt-BR.md) - versões de heap máximo e mínimo
* `B` [Fila de Prioridade (Priority Queue)](./data-structures/priority-queue/README.pt-BR.md)
* `A` [Árvore de Prefixos (Trie)](./data-structures/trie/README.pt-BR.md)
* `A` [Árvore (Tree)](./data-structures/tree/README.pt-BR.md)
  * `A` [Árvore de Pesquisa Binária (Binary Search Tree)](./data-structures/tree/binary-search-tree/README.pt-BR.md)
  * `A` [Árvore AVL (AVL Tree)](./data-structures/tree/avl-tree/README.pt-BR.md)
  * `A` [Árvore Rubro-Negra (Red-Black Tree)](./data-structures/tree/red-black-tree/README.pt-BR.md)
  * `A` [Árvore de Segmento (Segment Tree)](./data-structures/tree/segment-tree/README.pt-BR.md) - com exemplos de consultas min / max / sum range
  * `A` [Árvore Fenwick (Fenwick Tree)](./data-structures/tree/fenwick-tree/README.pt-BR.md) (Árvore indexada binária)
* `A` [Grafo (Graph)](./data-structures/graph/README.pt-BR.md) (ambos dirigidos e não direcionados)
* `A` [Conjunto Disjunto (Disjoint Set)](./data-structures/disjoint-set/README.pt-BR.md)
* `A` [Filtro Bloom (Bloom Filter)](./data-structures/bloom-filter/README.pt-BR.md)
* [Padrões de Código](./data-structures/README.pt-BR.md)
* `B` [Lista Encadeada (Prefix Sum)](./code-patterns/prefix-sum/README.pt-BR.md)
* `B` [Pilha Monotônica (Monotonic Stack)](./code-patterns/monotonic_stack/README.pt-BR.md)
* `B` [Lista Duplamente Ligada (Doubly Linked List)](./code-patterns/doubly-linked-list/README.pt-BR.md)


-------

# Estruturas de Dados (Data Structures)

## Lista Encadeada (Linked List)

**Contexto de uso:** Armazenar uma coleção de elementos em uma sequência linear, onde cada elemento (nó) aponta para o próximo. É útil quando você precisa de inserções e exclusões eficientes no meio da lista, sem a necessidade de realocação de memória como em arrays dinâmicos.

**Aplicações:**
<ul>
<li>Implementação de outras estruturas de dados como pilhas e filas.</li>
<li>Gerenciamento de memória (por exemplo, na alocação e desalocação de blocos de memória).</li>
<li>Listas de reprodução de músicas onde a ordem e a facilidade de adicionar/remover são importantes.</li>
<li>Sistemas de arquivos onde os blocos de dados não são contíguos.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Acesso lento por índice: Para acessar um elemento em uma posição específica, é preciso percorrer a lista desde o início, o que leva tempo O(n)</li>
<li>Maior consumo de memória: Cada nó precisa armazenar não apenas o dado, mas também um ponteiro para o próximo nó.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos/Classes: Para representar os nós da lista (com value e next).</li>
<li>Referências: Para apontar de um nó para o próximo.</li>
</ul>

-------

## Lista Duplamente Ligada (Doubly Linked List)
**Contexto de uso:** Similar à lista encadeada, mas cada nó também aponta para o nó anterior. Isso permite travessia bidirecional e inserções/exclusões mais eficientes em ambas as direções.

**Aplicações:**
<ul>
<li>Histórico de "voltar" e "avançar" em navegadores web.</li>
<li>Implementação de caches LRU (Least Recently Used), onde elementos acessados recentemente são movidos para o início.</li>
<li>Editores de texto para operações de desfazer/refazer.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Maior consumo de memória: Cada nó requer um ponteiro adicional para o nó anterior.</li>
<li>Complexidade um pouco maior na implementação: As operações de inserção e exclusão exigem a atualização de dois ponteiros em vez de um.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos/Classes: Para representar os nós (com value, next e prev).</li>
<li>Referências: Para apontar para os nós anterior e posterior.</li>
</ul>

-------

## Fila (Queue)
**Contexto de uso:** Segue o princípio FIFO (First-In, First-Out), onde o primeiro elemento adicionado é o primeiro a ser removido. É usada para gerenciar recursos que precisam ser processados em uma ordem específica.

**Aplicações:**
<ul>
<li>Fila de impressão em sistemas operacionais.</li>
<li>Gerenciamento de tarefas em servidores (por exemplo, enfileiramento de requisições web).</li>
<li>Simulações de eventos em sistemas.</li>
<li>Largura de busca em grafos (BFS - Breadth-First Search).</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Acesso limitado: Apenas o elemento no "início" da fila é diretamente acessível para remoção, e novos elementos são adicionados apenas no "fim".</li>
<li>Redimensionamento em arrays: Se implementada com arrays, pode haver custos de redimensionamento e deslocamento de elementos em operações.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Arrays: Para uma implementação simples (usando push e shift).</li>
<li>Listas Encadeadas: Para uma implementação mais eficiente em termos de tempo para grandes filas.</li>
</ul>

-------

### Pilha (Stack)
**Contexto de uso:** Segue o princípio LIFO (Last-In, First-Out), onde o último elemento adicionado é o primeiro a ser removido. É usada para gerenciar operações que precisam ser desfeitas na ordem inversa em que foram realizadas.

**Aplicações:**
<ul>
<li>Gerenciamento de chamadas de funções (call stack).</li>
<li>Operações de desfazer/refazer em softwares.</li>
<li>Verificação de balanceamento de parênteses em expressões.</li>
<li>Profundidade de busca em grafos (DFS - Depth-First Search).</li>
<li>Avaliação de expressões pós-fixadas (notação polonesa reversa).</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Acesso limitado: Apenas o elemento no "topo" da pilha é diretamente acessível.</li>
<li>Overflow: Se a pilha crescer demais, pode ocorrer um "stack overflow" (em implementações baseadas em arrays, pode levar a problemas de memória).</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Arrays: Para uma implementação simples (usando push e pop).</li>
<li>Listas Encadeadas: Para uma implementação mais flexível em termos de tamanho.</li>
</ul>

-------

### Tabela de Hash (Hash Table)
**Contexto de uso:** Armazenar pares chave-valor e permitir acesso rápido aos valores através de suas chaves. Usa uma função de hash para mapear chaves para índices em um array.
**Aplicações:**
<ul>
<li>Dicionários e objetos em linguagens de programação.</li>
<li>Caches para acesso rápido a dados frequentemente usados.</li>
<li>Bancos de dados para indexação de registros.</li>
<li>Implementação de conjuntos (ou sets) para armazenar elementos únicos.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Colisões (Desassociações): Múltiplas chaves podem ser mapeadas para o mesmo índice, exigindo estratégias de resolução de colisões (encadeamento separado ou sondagem aberta), o que pode afetar o desempenho.</li>
<li>Dependência da função de hash: Uma função de hash mal projetada pode levar a muitas colisões e degradar o desempenho.</li>
<li>Sem ordem inerente: Os elementos não são armazenados em nenhuma ordem específica.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos JavaScript ({}) ou Map: Para a implementação nativa de dicionários.</li>
<li>Funções: Função de hash em JavaScript/TypeScript/Ruby.</li>
<li>Arrays: Para armazenar os "buckets" onde os pares chave-valor são armazenados.</li>
<li>Sem ordem inerente: Os elementos não são armazenados em nenhuma ordem específica.</li>
</ul>

-------


### Heap (Heap Máximo e Mínimo)
**Contexto de uso:** Uma estrutura de dados baseada em árvore binária que satisfaz a propriedade de heap: em um heap máximo, o valor de cada nó é maior ou igual aos valores de seus filhos; em um heap mínimo, é menor ou igual. É ideal para encontrar o maior/menor elemento rapidamente.

**Aplicações:**
<ul>
<li>Implementação de filas de prioridade.</li>
<li>Algoritmo de ordenação Heap Sort.</li>
<li>Encontrar o k-ésimo maior/menor elemento em um conjunto de dados.</li>
<li>Algoritmos de grafos como o algoritmo de Dijkstra (com fila de prioridade).</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Acesso limitado: Apenas o elemento raiz (maior ou menor) é facilmente acessível.</li>
<li>Remoções e inserções: As operações de inserção e remoção exigem a restauração da propriedade de heap, o que envolve comparações e trocas.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Arrays: A maneira mais comum e eficiente de representar um heap, onde os filhos de um nó em index i estão em 2i+1 e 2i+2.</li>
<li>Comparadores: Para definir a ordem dos elementos (maior ou menor).</li>
</ul>

----

### Fila de Prioridade (Priority Queue)
**Contexto de uso:** Uma fila onde cada elemento tem uma prioridade associada. Elementos com maior prioridade são removidos antes de elementos com menor prioridade. Se as prioridades forem iguais, a ordem de chegada pode ser usada como critério.

**Aplicações:**
<ul>
<li>Gerenciamento de tarefas em sistemas operacionais baseados em prioridade.</li>
<li>Algoritmos de agendamento de processos.</li>
<li>Algoritmos de busca como o algoritmo A* (para encontrar o caminho mais curto com heurística).</li>
<li>Simulações de eventos discretos.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Complexidade de implementação: Geralmente implementada usando um heap, o que adiciona alguma complexidade em comparação com uma fila simples.</li>
<li>Desempenho: Inserções e remoções podem levar tempo logarítmico (O(logn)) devido à necessidade de manter a propriedade de heap.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Heap (Heap Máximo/Mínimo): A forma mais eficiente de implementar uma fila de prioridade.</li>
<li>Objetos/Classes: Para encapsular os elementos e suas prioridades.</li>
</ul>

-------

### Árvore de Prefixos (Trie)
**Contexto de uso:** Uma estrutura de dados em forma de árvore usada para armazenar uma coleção de strings, otimizada para operações de busca e preenchimento automático baseadas em prefixos.

**Aplicações:**
<ul>
<li>Autocompletar e sugestão de palavras em motores de busca e teclados.</li>
<li>Verificação ortográfica.</li>
<li>Roteamento de IP.</li>
<li>Dicionários para busca rápida de palavras.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Consumo de memória: Pode consumir muita memória se houver muitas strings com prefixos diferentes, pois cada nó armazena referências aos seus filhos.</li>
<li>Ineficiente para strings longas e pouca similaridade: Se as strings forem muito longas e tiverem poucos prefixos em comum, a trie pode não ser tão eficiente.</li>
</ul>


**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos/Classes: Para representar os nós da trie (com um mapa de filhos e um indicador de fim de palavra).
<li>Iteração sobre strings: Para percorrer os caracteres de uma string e navegar pela trie.</li>
</ul>


-------

### Árvore (Tree)
**Contexto de uso:** Uma estrutura de dados hierárquica composta por nós conectados por arestas. O nó superior é a raiz, e cada nó pode ter zero ou mais filhos.

**Aplicações:**
<ul>
<li>Representação de hierarquias (sistemas de arquivos, DOM de HTML).</li>
<li>Estruturas de sintaxe em compiladores.</li>
<li>Organização de dados para busca e classificação.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Complexidade em travessia: Para encontrar elementos específicos, pode ser necessário percorrer a árvore.</li>
<li>Balanceamento: Em árvores não balanceadas, operações de busca podem degradar para O(n) no pior caso.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos/Classes: Para representar os nós (com value e children).</li>
<li>Recursão: Para operações como travessia (DFS, BFS).</li>
<li>Árvore de Pesquisa Binária (Binary Search Tree - BST)</li>
</ul>

-------

### Árvore de Pesquisa Binária (Binary Search Tree - BST)
**Contexto de uso:** Uma árvore binária onde para cada nó, todos os valores na subárvore esquerda são menores que o valor do nó, e todos os valores na subárvore direita são maiores. É ideal para busca, inserção e exclusão eficientes de dados ordenados.

**Aplicações:**
<ul>
<li>Implementação de conjuntos e mapas.</li>
<li>Bancos de dados para indexação de dados.</li>
<li>Algoritmos de busca e ordenação.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Pode ficar desbalanceada: Se os elementos forem inseridos em uma ordem específica (por exemplo, crescente), a árvore pode se degenerar em uma lista encadeada, levando a operações O(n) no pior caso.</li>
</ul>


**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos/Classes: Para representar os nós (com value, left e right).</li>
<li>Recursão: Para operações como busca, inserção e exclusão.</li>
</ul>

-------

### Árvore AVL (AVL Tree)
**Contexto de uso:** Uma BST auto-balanceada. A altura das subárvores esquerda e direita de qualquer nó difere no máximo em um. Isso garante que as operações de busca, inserção e exclusão tenham complexidade logarítmica (O(logn)) no pior caso.

**Aplicações:**
<ul>
<li>Sistemas de banco de dados e sistemas de arquivos que exigem busca rápida e garantida.</li>
<li>Qualquer aplicação onde a performance de busca é crítica e a árvore precisa se manter balanceada.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Complexidade de implementação: Mais complexa de implementar do que uma BST simples devido às rotações necessárias para manter o balanceamento.</li>
<li>Overhead de balanceamento: Pequeno custo adicional nas operações de inserção e exclusão devido às rotações.</li>
</ul>


**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos/Classes: Para representar os nós (com value, left e right).</li>
<li>Recursão: Para operações como busca, inserção e exclusão.</li>
</ul>

-------

### Árvore Rubro-Negra (Red-Black Tree)
**Contexto de uso:** Outra BST auto-balanceada, com regras específicas de coloração de nós (vermelho ou preto) e propriedades que garantem o balanceamento. Oferece complexidade O(logn) para todas as operações principais, com um balanceamento menos rígido que a AVL, mas ainda eficiente.

**Aplicações:**
<ul>
<li>Muitas implementações de Map e Set em bibliotecas padrão de linguagens de programação (incluindo TreeMap e TreeSet em Java).</li>
<li>Agendadores de processos em sistemas operacionais.</li>
<li>Bancos de dados para indexação.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Complexidade de implementação: Mais complexa que a AVL devido às regras de coloração e rotações/recolorações.</li>
<li>Overhead de balanceamento: Similar à AVL, com custo adicional nas operações de inserção e exclusão.</li>
</ul>


**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos/Classes: Para representar os nós (com value, left, right e um campo para a cor).</li>
<li>Recursão: Para operações como busca, inserção e exclusão.</li>
</ul>

-------

### Árvore de Segmento (Segment Tree)
**Contexto de uso:** Usada para realizar consultas eficientes sobre intervalos (ranges) em um array ou lista, como soma de intervalo, mínimo/máximo de intervalo, etc.

**Aplicações:**
<ul>
<li>Processamento de consultas em bancos de dados.</li>
<li>Geometria computacional para problemas de intervalo.</li>
<li>Competições de programação para resolver problemas de consulta de intervalo rapidamente.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Consumo de memória: Requer O(n) espaço, onde n é o tamanho do array original, o que pode ser significativo para arrays muito grandes.</li>
<li>Complexidade de construção: A construção da árvore leva tempo O(n).</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Arrays: Para representar a árvore de segmento (geralmente como um array, onde os filhos de um nó em index i estão em 2i e 2i+1).</li>
<li>Recursão: Para construir a árvore e realizar consultas.</li>
</ul>

-------

### Árvore Fenwick (Fenwick Tree) / Árvore Indexada Binária
**Contexto de uso:** Uma estrutura de dados compacta que permite calcular somas de prefixo e atualizar elementos de um array em tempo logarítmico (O(logn)). É mais simples de implementar e consome menos memória do que uma Árvore de Segmento para algumas operações.

**Aplicações:**
<ul>
<li>Cálculo de somas de prefixo eficientes.</li>
<li>Atualização de elementos em arrays e consulta de somas de intervalo.</li>
<li>Problemas de contagem em competições de programação.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Funcionalidade limitada: Suporta principalmente operações de soma de prefixo e atualização de ponteiros. Não é tão flexível quanto uma Árvore de Segmento para diferentes tipos de consultas de intervalo (min/max).</li>
<li>Baseada em 1-indexed: A implementação tradicional é baseada em índices começando em 1, o que pode exigir um pequeno ajuste para arrays baseados em 0 em JavaScript.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Arrays: Para armazenar os valores da árvore Fenwick.</li>
<li>Bitwise operations: Para calcular os índices dos nós pais e filhos de forma eficiente.</li>
</ul>

-------

### Grafo (Graph) (dirigidos e não direcionados)
**Contexto de uso:** Representar relações e conexões entre entidades. Um grafo consiste em vértices (nós) e arestas (conexões entre os vértices).

**Aplicações:**
<ul>
<li>Redes sociais (pessoas como vértices, amizades como arestas).</li>
<li>Sistemas de navegação e GPS (locais como vértices, estradas como arestas).</li>
<li>Redes de computadores (dispositivos como vértices, cabos/conexões como arestas).</li>
<li>Modelagem de problemas de fluxo, dependências de tarefas, etc.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Complexidade de algoritmos: Muitos algoritmos de grafos são computacionalmente intensivos (por exemplo, busca de caminhos mais curtos em grafos densos).</li>
<li>Representação: Escolher a representação correta (matriz de adjacência vs. lista de adjacência) é crucial para a eficiência.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Objetos JavaScript ({}) ou Map: Para representar vértices e suas adjacências.</li>
<li>Arrays: Para listas de adjacência.</li>
<li>Classes/Objetos: Para representar os vértices e as arestas.</li>
</ul>

-------

### Conjunto Disjunto (Disjoint Set) / Union-Findx
**Contexto de uso:** Gerenciar uma coleção de conjuntos disjuntos (que não possuem elementos em comum) e realizar duas operações principais: encontrar o conjunto ao qual um elemento pertence (find) e unir dois conjuntos (union).

**Aplicações:**
<ul>
<li>Algoritmos de Kruskal para encontrar a Árvore Geradora Mínima (MST).</li>
<li>Verificação de conectividade em grafos.</li>
<li>Agrupamento de elementos em componentes conectados.</li>
<li>Problemas de conectividade em redes.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Não armazena elementos: A estrutura em si não armazena os elementos, apenas as relações entre eles.</li>
<li>Otimizações necessárias: Para alcançar eficiência próxima de O(α(n)) (quase constante), é preciso implementar otimizações como compressão de caminho e união por patente/tamanho.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Arrays: Para armazenar os pais de cada elemento e, opcionalmente, o tamanho/patente de cada conjunto.</li>
</ul>

-------

### Filtro Bloom (Bloom Filter)
**Contexto de uso:** Uma estrutura de dados probabilística que verifica se um elemento é provavelmente parte de um conjunto, ou definitivamente não parte. É extremamente eficiente em termos de espaço.

**Aplicações:**
<ul>
<li>Evitar que o servidor carregue páginas que não existem (cache de URL "negativo").</li>
<li>Detecção de spam.</li>
<li>Banco de dados para verificar a existência de uma chave antes de uma operação de disco cara.</li>
<li>Sistemas distribuídos para verificar a presença de dados.</li>
</ul>

**Constrains/Downsides:**
<ul>
<li>Probabilístico: Pode ter falsos positivos (dizer que um elemento está no conjunto quando não está), mas nunca falsos negativos.</li>
<li>Não é possível remover elementos: Uma vez que um elemento é adicionado, ele não pode ser removido sem recriar o filtro (ou usar uma variação mais complexa).</li>
<li>Taxa de falso positivo: A taxa de falso positivo aumenta com o número de elementos adicionados.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Arrays de bits: Para representar o filtro.</li>
<li>Funções de hash múltiplas: Para mapear um elemento para vários índices no array de bits.</li>
</ul>

-------

## Padrões de Código

**Contexto de uso:** Um padrão de código é um conjunto de regras e boas práticas que ajudam a escrever código para resolução de diferentes tipos de problemas, de forma consistente e eficiente, seguindo alguns padrões matemáticos ou lógicos.

**Aplicações:**
<ul>
<li>Código de implementação de algoritmos.</li>
<li>Código de testes de unidade.</li>
<li>Código de documentação.</li>
</ul>

**Principais elementos da linguagem utilizados para construção:**
<ul>
<li>Classes/Objetos: Para representar os padrões de código.</li>
<li>Funções: Para implementar as regras e práticas.</li>
</ul>


### 1. Soma de prefixo (Prefix Sum)

A Soma de Prefixo envolve o pré-processamento de um array para criar um novo array onde cada elemento no índice `i` representa a soma dos elementos do array original desde o início até `i`. Isso permite consultas eficientes de soma em sub-arrays.

**Contexto de uso:**  Utilize este padrão quando precisar realizar múltiplas consultas de soma em um sub-array ou precisar calcular somas cumulativas.

**Problema Exemplo:**

Dado um array `nums`, responda quantas múltiplas consultas sobre a soma dos elementos dentro de um intervalo específico [i, j].

Exemplo:
```
Entrada: nums = [1, 2, 3, 4, 5, 6], i = 1, j = 3

Saída: 9
```

**Explicação:**
Pré-processe o array A para criar um array de soma de prefixo: `P = [1, 3, 6, 10, 15, 21]`

Para encontrar a soma entre os índices `i` e `j`, use a fórmula: `P[j] - P[i-1]`

-------

### 2. Ponteiros duplos (Two Pointers)
O padrão Ponteiros Duplos envolve o uso de dois ponteiros para iterar por um array ou lista, frequentemente utilizado para encontrar pares ou elementos que atendam a critérios específicos.

**Contexto de uso:** Utilize este padrão ao lidar com arrays ou listas ordenadas onde você precisa encontrar pares que satisfaçam uma condição específica.

Problema Exemplo:

Encontre dois números em um array ordenado que somem um valor alvo.

Exemplo:
```
Entrada: nums = [1, 2, 3, 4, 6], target = 6

Saída: [1, 3]
```

**Explicação:**

Inicialize dois ponteiros, um no início (left) e outro no final (right) do array.

Verifique a soma dos elementos nos dois ponteiros.

Se a soma for igual ao target, retorne os índices.

Se a soma for menor que o target, mova o ponteiro `left` para a direita.

Se a soma for maior que o target, mova o ponteiro `right` para a esquerda.

-------

### 3. Janela Deslizante (Sliding Window)

O padrão Janela Deslizante é utilizado para encontrar um sub-array ou sub-string que satisfaça uma condição específica, otimizando a complexidade de tempo ao manter uma "janela" de elementos.

**Contexto de uso:** Utilize este padrão ao lidar com problemas que envolvem sub-arrays ou sub-strings contíguos.

Problema Exemplo:
Encontre a soma máxima de um sub-array de tamanho k.

Exemplo:
```
Entrada: nums = [2, 1, 5, 1, 3, 2], k = 3

Saída: 9
```

**Explicação:**

Comece com a soma dos primeiros k elementos.

Deslize a janela um elemento por vez, subtraindo o elemento que sai da janela e adicionando o novo elemento.

Mantenha o controle da soma máxima encontrada.

-------
### 4. Ponteiros Rápido e Lento (Fast & Slow Pointers)
O padrão Ponteiros Rápido e Lento (Tartaruga e Lebre) é usado para detectar ciclos em listas encadeadas e outras estruturas semelhantes.

**Contexto de uso:** Utilize este padrão quando precisar identificar a presença de ciclos em estruturas de dados como listas encadeadas, ou em problemas onde a velocidade relativa de dois ponteiros pode ajudar a encontrar um estado específico.

Problema Exemplo:
Detectar se uma lista encadeada possui um ciclo.

Exemplo:

```
Entrada: Uma lista encadeada head.

Saída: true se houver um ciclo, false caso contrário.
```

**Explicação:**

Inicialize dois ponteiros: um movendo um passo por vez (lento) e outro movendo dois passos por vez (rápido).

Se houver um ciclo, o ponteiro rápido eventualmente encontrará o ponteiro lento.

Se o ponteiro rápido chegar ao final da lista (ou seja, nil), não há ciclo.

-------

### 5. Reversão de Lista Encadeada In-place (LinkedList In-place Reversal)
O padrão Reversão de Lista Encadeada In-place reverte partes de uma lista encadeada sem usar espaço extra (memória adicional significativa).

**Contexto de uso:** Utilize este padrão quando precisar inverter seções de uma lista encadeada de forma eficiente, sem alocar uma nova estrutura de dados para armazenar a lista invertida.

Problema Exemplo:
Reverter uma sublista de uma lista encadeada da posição m até n.

Exemplo:
```
Entrada: head = [1, 2, 3, 4, 5], m = 2, n = 4

Saída: [1, 4, 3, 2, 5]
```

**Explicação:**

Identifique o início e o fim da sublista a ser revertida.

Reverta os nós "in-place" ajustando os ponteiros (next) de cada nó. Isso geralmente envolve manter ponteiros para o nó anterior, o nó atual e o próximo nó enquanto você itera.

-------

### 6. Pilha Monotônica (Monotonic Stack)

O padrão **Pilha Monotônica** usa uma pilha para manter uma sequência de elementos em uma ordem específica (crescente ou decrescente).

Contexto de uso: Utilize este padrão para problemas que exigem encontrar o próximo elemento maior ou menor, ou para otimizar cálculos envolvendo intervalos onde a monotonicidade dos elementos é importante.

Problema Exemplo:
Encontre o próximo elemento maior para cada elemento em um array. A saída deve ser -1 se o elemento maior não existir.

Exemplo:

Entrada: nums = [2, 1, 2, 4, 3]

Saída: [4, 2, 4, -1, -1]

Explicação:
Use uma pilha para acompanhar os elementos para os quais ainda não encontramos o próximo elemento maior.

Itere pelo array e, para cada elemento, remova (pop) elementos da pilha até encontrar um elemento maior.

Se a pilha não estiver vazia, defina o resultado para o índice no topo da pilha como o elemento atual.

Adicione (push) o elemento atual à pilha.

### 7. Top 'K' Elementos (Top 'K' Elements)
O padrão **Top 'K' Elementos** encontra os k maiores ou menores elementos em um array ou fluxo de dados usando heaps ou ordenação.

Contexto de uso: Utilize este padrão quando precisar identificar os elementos mais proeminentes (maiores ou menores) de um conjunto de dados, como os k produtos mais vendidos, os k usuários mais ativos, ou o k-ésimo maior valor em um conjunto.

Problema Exemplo:
Encontre o k-ésimo maior elemento em um array não ordenado.

Exemplo:

Entrada: nums = [3, 2, 1, 5, 6, 4], k = 2

Saída: 5

Explicação:
Use um min-heap de tamanho k para acompanhar os k maiores elementos.

Itere pelo array, adicionando elementos ao heap.

Se o tamanho do heap exceder k, remova o menor elemento do heap (que será a raiz, em um min-heap).

A raiz do heap será o k-ésimo maior elemento.

### 8. Intervalos Sobrepostos (Overlapping Intervals)
O padrão **Intervalos Sobrepostos** é utilizado para unir ou manipular intervalos que se sobrepõem em um array.

Em um array de intervalos ordenado pelo tempo de início, dois intervalos [a, b] e [c, d] se sobrepõem se b >= c (isto é, o tempo de fim do primeiro intervalo é maior ou igual ao tempo de início do segundo intervalo).

**Contexto de uso:** Utilize este padrão em problemas onde você precisa consolidar intervalos de tempo, como agendamentos, períodos de disponibilidade, ou fusão de segmentos de dados que se interseccionam.

Problema Exemplo:
Declaração do Problema: Mesclar todos os intervalos sobrepostos.

Exemplo:

Entrada: intervals = [[1, 3], [2, 6], [8, 10], [15, 18]]

Saída: [[1, 6], [8, 10], [15, 18]]

Explicação:
Ordene os intervalos pelo tempo de início.
Crie uma lista vazia chamada merged para armazenar os intervalos mesclados.
Itere pelos intervalos e verifique se ele se sobrepõe com o último intervalo na lista merged.
Se houver sobreposição, mescle os intervalos atualizando o tempo de fim do último intervalo em merged.
Se não houver sobreposição, simplesmente adicione o intervalo atual à lista merged.

---------

### 9. Busca Binária Modificada (Modified Binary Search)
O padrão **Busca Binária Modificada** adapta a busca binária tradicional para resolver uma gama mais ampla de problemas, como encontrar elementos em arrays ordenados rotacionados.

Contexto de uso: Utilize este padrão em problemas que envolvem arrays ordenados (ou arrays que foram rotacionados, mas mantêm suas propriedades de ordenação em partes) onde você precisa encontrar um elemento específico de forma eficiente, aproveitando a natureza ordenada dos dados.

Problema Exemplo:
Encontre um elemento em um array ordenado rotacionado.

Exemplo:

Entrada: nums = [4, 5, 6, 7, 0, 1, 2], target = 0

Saída: 4 (o índice do target)

Explicação:
Execute a busca binária com uma verificação adicional para determinar qual metade do array está ordenada.
Em seguida, verifique se o target está dentro do intervalo da metade ordenada.
Se estiver, pesquise nessa metade; caso contrário, pesquise na outra metade.

---------

### 10. Travessia de Árvore Binária (Binary Tree Traversal)
A **Travessia de Árvore Binária** envolve visitar todos os nós em uma árvore binária em uma ordem específica. Existem três ordens principais:

<ul>
<li>Pré-Ordem (PreOrder): raiz -> esquerda -> direita</li>
<li>Em Ordem (InOrder): esquerda -> raiz -> direita</li>
<li>Pós-Ordem (PostOrder): esquerda -> direita -> raiz</li>
</ul>

**Contexto de uso:** Utilize este padrão para processar ou exibir dados armazenados em uma estrutura de árvore binária de uma maneira sistemática. Diferentes ordens de travessia são úteis para tarefas específicas, como copiar uma árvore (Pré-Ordem), obter elementos ordenados (Em Ordem em uma Árvore de Busca Binária), ou deletar uma árvore (Pós-Ordem).

Problema Exemplo:
Declaração do Problema: Realize a travessia Em Ordem de uma árvore binária.

Entrada: root = [1, null, 2, 3] (representa a árvore: 1 como raiz, sem filho esquerdo, 2 como filho direito de 1, e 3 como filho esquerdo de 2)
```
   1
    \
     2
    /
   3

Saída: [1, 3, 2]
```

Explicação:
A travessia Em Ordem visita os nós na sequência: esquerda, raiz, direita.

Para a árvore `1 -> 2 (direita) -> 3 (esquerda de 2)`

<ol>
<li>Começa na raiz (1).</li>
<li>Vai para o filho esquerdo (null). Não há nada, então retorna.</li>
<li>Visita a raiz (1). Adiciona 1 à lista.</li>

<li>Vai para o filho direito (2).</li>
  • Para o nó 2:
  <ol>
    <li>Vai para o filho esquerdo (3).</li>
      • Para o nó 3:
      <ol>
        <li>Vai para o filho esquerdo (null).</li>
        <li>Visita a raiz (3). Adiciona 3 à lista.</li>
        <li>Vai para o filho direito (null).</li>
      </ol>

  <li>Retorna de 3.</li>
  <li>Visita a raiz (2). Adiciona 2 à lista.</li>
  <li>Vai para o filho direito (null).</li>
  </ol>
  • Retorna de 2.

  • Termina.
</ol>

O resultado final é [1, 3, 2].


Use recursão ou uma pilha para percorrer a árvore nesta ordem.

---------

### 11. Busca em Profundidade (Depth-First Search - DFS)
A **Busca em Profundidade (DFS)** é uma técnica de travessia que explora o mais fundo possível em um ramo antes de retroceder (backtracking).

**Contexto de uso:** Utilize este padrão para explorar todos os caminhos ou ramos em grafos ou árvores. É ideal para problemas que envolvem encontrar um caminho específico, verificar conectividade, ou gerar todas as permutações/combinações.

Problema Exemplo:
Encontrar todos os caminhos da raiz às folhas em uma árvore binária.

Exemplo:

Entrada: root = [1, 2, 3, null, 5] (representa a árvore: 1 como raiz, 2 como filho esquerdo, 3 como filho direito, e 5 como filho direito de 2)
```
   1
  / \
 2   3
  \
   5

Saída: ["1->2->5", "1->3"]
```
Explicação:
Use recursão ou uma pilha para percorrer cada caminho da raiz às folhas.
Registre cada caminho à medida que avança.

<ul>
<li>Para o caminho `1 -> 2 -> 5`:</li>
  <ol>
    <li>Começa na raiz 1.</li>
    <li>Vai para o filho esquerdo 2.</li>
    <li>Vai para o filho direito de 2, que é 5. 5 é uma folha, então o caminho "1->2->5" é registrado.</li>
  </ol>

<li>Para o caminho `1 -> 3`:</li>
  <ol>
      <li>Retorna ao 1 e vai para o filho direito 3. 3 é uma folha, então o caminho "1->3" é registrado.</li>
  </ol>
</ul>

---------

### 12. Busca em Largura (Breadth-First Search - BFS)
A **Busca em Largura (BFS)** é uma técnica de travessia que explora os nós nível por nível em uma árvore ou grafo.

**Contexto de uso:** Utilize este padrão para encontrar os caminhos mais curtos em grafos não ponderados ou para realizar travessias em ordem de nível em árvores. É ideal quando você precisa processar todos os nós em um determinado nível antes de passar para o próximo.

Problema Exemplo:
Realize a travessia em ordem de nível de uma árvore binária.

Exemplo:



Entrada: root = [3, 9, 20, null, null, 15, 7] (representa a árvore: 3 como raiz, 9 como filho esquerdo, 20 como filho direito, 15 como filho esquerdo de 20, e 7 como filho direito de 20)
```

  3
  / \
9  20
    / \
  15  7

Saída: [[3], [9, 20], [15, 7]]
```

Explicação:
Use uma fila para acompanhar os nós em cada nível.
Percorra cada nível e adicione os filhos dos nós atuais à fila.

<ol>
<li>Nível 0: Começa com a raiz 3 na fila.</li>
<ul>
  <li>Remova `3` da fila. Adicione `3` ao resultado do nível atual.</li>
  <li>Adicione os filhos de `3` (`9` e `20`) à fila.</li>
  <li>Resultado atual: `[[3]]`. Fila: `[9, 20]`</li>
</ul>
<li>Nível 1: A fila contém 9 e 20.</li>
<ul>
<li>Remova 9. Adicione 9 ao resultado do nível atual. Não tem filhos.</li>
<li>Remova 20. Adicione 20 ao resultado do nível atual.</li>
<li>Adicione os filhos de 20 (15 e 7) à fila.</li>
<li>Resultado atual: [[3], [9, 20]]. Fila: [15, 7]</li>
</ul>
<li>Nível 2: A fila contém 15 e 7.</li>
<ul>
<li>Remova 15. Adicione 15 ao resultado do nível atual. Não tem filhos.</li>
<li>Remova 7. Adicione 7 ao resultado do nível atual. Não tem filhos.</li>
<li>Resultado atual: [[3], [9, 20], [15, 7]]. Fila: []</li>
</ul>
<li>A fila está vazia, a travessia termina.</li>
</ol>

---------

### 13. Travessia de Matriz (Matrix Traversal)
A **Travessia de Matriz** envolve percorrer elementos em uma matriz usando diferentes técnicas (como DFS, BFS, etc.).

**Contexto de uso:** Utilize este padrão para problemas que envolvem percorrer grades 2D ou matrizes horizontalmente, verticalmente ou diagonalmente. É fundamental em jogos, processamento de imagens e algoritmos de caminho.

Problema Exemplo:
Realize o preenchimento de inundação (flood fill) em uma grade 2D. Mude todas as células conectadas à célula inicial para uma nova cor.

Exemplo:

Entrada: image = [[1,1,1],[1,1,0],[1,0,1]], sr = 1 (linha inicial), sc = 1 (coluna inicial), newColor = 2

Saída: [[2,2,2],[2,2,0],[2,0,1]]

Explicação:
Use DFS ou BFS para percorrer a matriz a partir da célula inicial fornecida.
Mude a cor das células conectadas para a nova cor.

A partir da célula (1,1) (valor 1), o algoritmo precisa encontrar todos os 1s adjacentes (acima, abaixo, esquerda, direita) e mudar sua cor para 2. Note que o 0 na posição (1,2) e o 1 na posição (2,2) não são conectados ao 1 central (o 1 em (2,2) é conectado apenas ao 0 em (2,1) e ao 0 em (1,2), não ao 1s originais que estão sendo preenchidos).

---------

### 14. Backtracking
Backtracking explora todas as soluções possíveis e retrocede (backtracks) quando um caminho de solução falha.

Contexto de uso: Utilize este padrão quando precisar encontrar todas (ou algumas) soluções para um problema que satisfaça restrições dadas. É amplamente usado em problemas combinatórios, como gerar permutações, combinações ou subconjuntos, ou em problemas de tomada de decisão onde múltiplos caminhos precisam ser explorados.

Problema Exemplo:
Gerar todas as permutações de uma dada lista de números.

Exemplo:

Entrada: nums = [1, 2, 3]

Saída: [[1,2,3], [1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1]]

Explicação:
Use recursão para gerar as permutações.
Para cada elemento, inclua-o na permutação atual e recursivamente gere as permutações restantes.
Retroceda (backtrack) quando todas as permutações para um dado caminho forem geradas.

O processo pode ser visualizado como uma árvore de decisão. Em cada nível da recursão, escolhemos um número não utilizado para adicionar à permutação atual. Uma vez que uma permutação completa é formada (quando o tamanho da permutação atual é igual ao tamanho do array original), ela é adicionada ao resultado. Então, o algoritmo "desfaz" a última escolha e tenta uma opção diferente, explorando assim todos os caminhos.

---------

### 15. Padrões de Programação Dinâmica (Dynamic Programming - DP)
A Programação Dinâmica (DP) envolve a quebra de problemas maiores em subproblemas menores, resolvendo-os usando uma abordagem de baixo para cima (bottom-up) ou de cima para baixo (top-down) com memoização.

Contexto de uso: Utilize este padrão para problemas que possuem subproblemas sobrepostos e estrutura ótima de subproblemas. Isso significa que a solução de um problema maior pode ser construída a partir das soluções ótimas de seus subproblemas.

A própria DP possui vários sub-padrões. Alguns dos mais importantes são:

Números de Fibonacci
Problema da Mochila 0/1 (0/1 Knapsack)
Maior Subsequência Comum (Longest Common Subsequence - LCS)
Maior Subsequência Crescente (Longest Increasing Subsequence - LIS)
Soma de Subconjuntos (Subset Sum)
Multiplicação em Cadeia de Matrizes (Matrix Chain Multiplication)
Problema Exemplo:
Calcular o n-ésimo número de Fibonacci.

-------

## Programação Dinâmica (Dynamic Programming - DP)

### 16. Sequência de Fibonacci (Fibonacci Sequence)
O padrão da Sequência de Fibonacci é útil quando a solução para um problema depende das soluções de instâncias menores do mesmo problema.

Existe uma relação recursiva clara, frequentemente se assemelhando à clássica sequência de Fibonacci F(n)=F(n−1)+F(n−2).

Contexto de uso: Este padrão é aplicado em uma vasta gama de problemas onde a solução de um problema em um determinado "passo" ou "tamanho" pode ser derivada diretamente das soluções dos passos ou tamanhos anteriores. É a base de muitos problemas de Programação Dinâmica e é fundamental para entender como decompor problemas maiores em subproblemas gerenciáveis.

Problema Exemplo:
Calcular o número de maneiras distintas de subir uma escada com n degraus, sabendo que você pode subir 1 ou 2 degraus por vez.

Exemplo:

Entrada: n = 3 (3 degraus)

Saída: 3

Explicação:
Vamos analisar as formas de subir a escada:
<ul>
<li>Para 1 degrau (n=1): [1] (1 maneira) -> F(1)</li>
<li>Para 2 degraus (n=2): [1, 1], [2] (2 maneiras) -> F(2)</li>
<li>Para 3 degraus (n=3):</li>
<ull>
<li>Se o último passo foi de 1 degrau: você veio de n-1 = 2 degraus. As maneiras são [1, 1, 1] ou [2, 1].</li>
<li>Se o último passo foi de 2 degraus: você veio de n-2 = 1 degrau. As maneiras são [1, 2].</li>
<li>Total: 3 maneiras.</li>
<li>Perceba que o número de maneiras para n degraus é a soma das maneiras para n-1 degraus e n-2 degraus, ou seja, maneiras(n) = maneiras(n-1) + maneiras(n-2).</li>
</ul>
</ul>

Esta é a exata relação da sequência de Fibonacci, onde maneiras(n) corresponde ao (n+1)-ésimo termo da sequência (assumindo F(0)=0,F(1)=1).


---------

### 17. Algoritmo de Kadane (Kadane's Algorithm)
O Algoritmo de Kadane é usado principalmente para resolver o Problema do Sub-array de Soma Máxima e suas variações, onde o problema pede para otimizar um sub-array contíguo dentro de um array numérico unidimensional.

Contexto de uso: Utilize este algoritmo para encontrar a maior soma possível de um sub-array contíguo em um array. É extremamente eficiente, operando em tempo linear (O(n)). Aplicações incluem análise financeira para encontrar o período de maior lucro, ou em bioinformática para identificar regiões de alta densidade em sequências.

Problema Exemplo:
Encontrar o sub-array contíguo com a maior soma em um dado array de números inteiros.

Exemplo:

Entrada: nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

Saída: 6

Explicação:
O sub-array [4, -1, 2, 1] tem a maior soma, que é 6.

O algoritmo de Kadane funciona mantendo duas variáveis principais:

1. `current_max:` A soma máxima do sub-array que termina na posição atual.
2. `global_max:` A soma máxima encontrada em qualquer sub-array até agora.

Ao iterar pelo array, para cada número, current_max é atualizado para ser o maior entre:
<ul>
<li>O número atual (iniciando um novo sub-array).</li>
<li>O número atual somado ao current_max anterior (estendendo o sub-array existente).global_max é sempre o maior valor entre o current_max e o global_max anterior.</li>
</ul>

---------

### 18. Problema da Mochila 0/1 - (0/1 Knapsack)
O padrão Problema da Mochila 0/1 é útil quando:

1. Você tem um conjunto de itens, cada um com um peso e um valor.
2. Você precisa selecionar um subconjunto desses itens.
3. Há uma restrição no peso total (ou algum outro recurso) que você pode usar.
4. Você quer maximizar (ou minimizar) o valor total dos itens selecionados.
5. Cada item pode ser escolhido apenas uma vez (daí o "0/1" - você o pega ou não).

**Contexto de uso:** Este é um problema clássico de otimização combinatória. É aplicado em cenários de alocação de recursos, como carregar um caminhão com itens para maximizar o valor, selecionar projetos com base em orçamentos e retornos, ou otimizar a seleção de anúncios para maximizar a receita dentro de um limite de espaço.

Problema Exemplo:

Dada uma mochila com capacidade máxima W e um conjunto de itens, onde cada item i tem um peso weights[i] e um valor values[i], determine o valor máximo que você pode colocar na mochila.

Exemplo:

Entrada:

capacidade_mochila = 50
pesos = [10, 20, 30]
valores = [60, 100, 120]
Saída: 220

Explicação:
A estratégia ótima é pegar os itens com pesos 20 e 30, totalizando um peso de 50 e um valor de 100 + 120 = 220. Se pegássemos o item de peso 10 e 30, teríamos 40 de peso e 60 + 120 = 180 de valor.

O problema da mochila 0/1 é tipicamente resolvido usando Programação Dinâmica. Uma tabela dp é construída, onde dp[i][j] representa o valor máximo que pode ser obtido com os primeiros i itens e uma capacidade de j.

---------

### 19. Problema da Mochila Ilimitada (Unbounded Knapsack)
O padrão Problema da Mochila Ilimitada é útil quando:

<ul>
<li>Você tem um conjunto de itens, cada um com um peso e um valor.</li>
<li>Você precisa selecionar itens para maximizar o valor total.</li>
<li>Há uma restrição no peso total (ou algum outro recurso) que você pode usar.</li>
<li>Você pode selecionar cada item múltiplas vezes (ao contrário da Mochila 0/1, onde cada item pode ser escolhido apenas uma vez).</li>
<li>O suprimento de cada item é considerado infinito.</li>
</ul>

**Contexto de uso:** Este padrão é aplicável em situações onde você pode reutilizar itens para preencher uma capacidade. Exemplos incluem encontrar o número mínimo de moedas para um determinado troco (se fosse minimização), determinar a melhor combinação de produtos que podem ser comprados repetidamente para maximizar um benefício dentro de um orçamento, ou otimizar a composição de um contêiner com diferentes tipos de pacotes ilimitados.

Problema Exemplo:
Dada uma mochila com capacidade máxima W e um conjunto de itens, onde cada item i tem um peso weights[i] e um valor values[i], e você pode pegar qualquer item quantas vezes quiser, determine o valor máximo que você pode colocar na mochila.

Exemplo:

Entrada:

capacidade_mochila = 100
pesos = [1, 30]
valores = [1, 30]
Saída: 100

Explicação:
A estratégia ótima é pegar o item de peso 1 e valor 1 cem vezes, totalizando um peso de 100 e um valor de 100. Se pegássemos o item de peso 30 três vezes, teríamos 90 de peso e 90 de valor, com espaço restante de 10.

Para o problema da mochila ilimitada, a Programação Dinâmica também é usada. A diferença chave é que, ao decidir incluir um item, não subtraímos a capacidade e movemos para o item anterior (i-1). Em vez disso, continuamos considerando o mesmo item para a capacidade restante, permitindo que ele seja escolhido múltiplas vezes. A relação de recorrência muda para: dp[j] = max(dp[j], values[i] + dp[j - weights[i]]).

------------

### 20. Maior Subsequência Comum (Longest Common Subsequence - LCS)
O padrão Maior Subsequência Comum (LCS) é útil quando você recebe duas sequências e precisa encontrar uma subsequência que aparece na mesma ordem em ambas as sequências dadas. Uma subsequência não exige que os elementos sejam contíguos na sequência original.

Contexto de uso: Este padrão é amplamente utilizado em bioinformática (para comparar sequências de DNA), controle de versão de arquivos (para mostrar as diferenças entre duas versões de um documento), e em verificação de plágio. Ele ajuda a quantificar a similaridade entre duas sequências.

Problema Exemplo:
Dadas duas strings text1 e text2, retorne o comprimento da sua maior subsequência comum.

Exemplo:

Entrada: text1 = "abcde", text2 = "ace"

Saída: 3

Explicação:
A maior subsequência comum é "ace", que tem comprimento 3.

a está em ambas.
c está em ambas.
e está em ambas.

