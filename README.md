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

-------

# Estruturas de Dados

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
