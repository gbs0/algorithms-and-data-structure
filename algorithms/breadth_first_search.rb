# Reutilizando a classe TreeNode definida anteriormente:
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order_traversal(root)
  return [] if root.nil?

  result = []
  queue = [root] # Inicializa a fila com o nó raiz

  while !queue.empty?
    level_size = queue.length # Número de nós no nível atual
    current_level_values = [] # Armazena os valores dos nós deste nível

    # Processa todos os nós no nível atual
    level_size.times do
      node = queue.shift # Remove o nó da frente da fila
      current_level_values << node.val

      # Adiciona os filhos do nó atual à fila para o próximo nível
      queue.push(node.left) if node.left
      queue.push(node.right) if node.right
    end

    result << current_level_values # Adiciona os valores do nível ao resultado final
  end

  result
end

# --- Exemplo de uso ---
# Construindo a árvore: [3, 9, 20, null, null, 15, 7]
#       3
#      / \
#     9  20
#        / \
#       15  7
node3 = TreeNode.new(3)
node9 = TreeNode.new(9)
node20 = TreeNode.new(20)
node15 = TreeNode.new(15)
node7 = TreeNode.new(7)

node3.left = node9
node3.right = node20
node20.left = node15
node20.right = node7

puts "Travessia em ordem de nível: #{level_order_traversal(node3).inspect}" # Saída: [[3], [9, 20], [15, 7]]

# Exemplo de árvore simples:
#   1
#  / \
# 2   3
node_a = TreeNode.new(1)
node_b = TreeNode.new(2)
node_c = TreeNode.new(3)
node_a.left = node_b
node_a.right = node_c
puts "Travessia em ordem de nível (árvore simples): #{level_order_traversal(node_a).inspect}" # Saída: [[1], [2, 3]]

# Exemplo de árvore com apenas a raiz:
node_root = TreeNode.new(100)
puts "Travessia em ordem de nível (apenas raiz): #{level_order_traversal(node_root).inspect}" # Saída: [[100]]
