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
# @return {String[]}
def binary_tree_paths(root)
  result_paths = []



  dfs(root, "", result_paths)
  result_paths
end

# Função auxiliar recursiva para realizar a DFS
# path_so_far armazena o caminho atual como uma string
def dfs(node, path_so_far, all_paths)
  return if node.nil?

  # Adiciona o valor do nó atual ao caminho
  current_path = path_so_far.empty? ? node.val.to_s : "#{path_so_far}->#{node.val}"

  # Se o nó atual for uma folha (não tem filhos), adiciona o caminho completo aos resultados
  if node.left.nil? && node.right.nil?
    all_paths << current_path
    return
  end

  # Continua a busca para os filhos esquerdo e direito
  dfs(node.left, current_path, all_paths)
  dfs(node.right, current_path, all_paths)
end


# --- Exemplo de uso ---
# Construindo a árvore: [1, 2, 3, null, 5]
#        1
#       / \
#      2   3
#       \
#        5
node1 = TreeNode.new(1)
node2 = TreeNode.new(2)
node3 = TreeNode.new(3)
node5 = TreeNode.new(5)

node1.left = node2
node1.right = node3
node2.right = node5

puts "Todos os caminhos da raiz às folhas: #{binary_tree_paths(node1).inspect}" # Saída: ["1->2->5", "1->3"]

# Exemplo de uma árvore mais simples:
#   1
#  /
# 2
node_a = TreeNode.new(1)
node_b = TreeNode.new(2)
node_a.left = node_b
puts "Todos os caminhos (árvore simples): #{binary_tree_paths(node_a).inspect}" # Saída: ["1->2"]

# Exemplo de uma árvore com apenas a raiz:
node_root = TreeNode.new(10)
puts "Todos os caminhos (apenas raiz): #{binary_tree_paths(node_root).inspect}" # Saída: ["10"]
