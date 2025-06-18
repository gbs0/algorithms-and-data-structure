# Definindo a estrutura de um nó de árvore binária
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# Implementação da travessia Em Ordem (InOrder) usando recursão
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  result = []

  # Função auxiliar recursiva
  def traverse(node, result_list)
    return if node.nil?

    # Visita a subárvore esquerda
    traverse(node.left, result_list)

    # Visita a raiz
    result_list << node.val

    # Visita a subárvore direita
    traverse(node.right, result_list)
  end

  traverse(root, result)
  result
end

# Implementação da travessia Em Ordem (InOrder) usando uma pilha (iterativo)
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal_iterative(root)
  result = []
  stack = []
  current = root

  while current || !stack.empty?
    # Navega para o nó mais à esquerda, empilhando os nós encontrados
    while current
      stack.push(current)
      current = current.left
    end

    # Pop do nó mais à esquerda (que é o próximo a ser visitado Em Ordem)
    current = stack.pop
    result << current.val

    # Agora, move para a subárvore direita do nó visitado
    current = current.right
  end

  result
end


# --- Exemplo de uso ---
# Construindo a árvore: 1 -> null (esquerda) -> 2 (direita) -> 3 (esquerda de 2)
# Equivale a Input: root = [1, null, 2, 3]
node1 = TreeNode.new(1)
node2 = TreeNode.new(2)
node3 = TreeNode.new(3)

node1.right = node2
node2.left = node3

puts "Travessia Em Ordem (Recursiva): #{inorder_traversal(node1).inspect}"       # Saída: [1, 3, 2]
puts "Travessia Em Ordem (Iterativa): #{inorder_traversal_iterative(node1).inspect}" # Saída: [1, 3, 2]

# Exemplo de árvore completa:
#       4
#      / \
#     2   5
#    / \
#   1   3
node_a = TreeNode.new(4)
node_b = TreeNode.new(2)
node_c = TreeNode.new(5)
node_d = TreeNode.new(1)
node_e = TreeNode.new(3)

node_a.left = node_b
node_a.right = node_c
node_b.left = node_d
node_b.right = node_e

puts "Travessia Em Ordem (Recursiva) para outra árvore: #{inorder_traversal(node_a).inspect}"       # Saída: [1, 2, 3, 4, 5]
puts "Travessia Em Ordem (Iterativa) para outra árvore: #{inorder_traversal_iterative(node_a).inspect}" # Saída: [1, 2, 3, 4, 5]
