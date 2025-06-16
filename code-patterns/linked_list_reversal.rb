# Reutilizando a classe ListNode do exemplo anterior
# class ListNode
#   attr_accessor :val, :next
#   def initialize(val = 0, _next = nil)
#     @val = val
#     @next = _next
#   end
# end

def reverse_between(head, m, n)
  return head if m == n # Não há nada para reverter se m e n forem iguais

  dummy = ListNode.new(0)
  dummy.next = head
  prev = dummy

  # Mover 'prev' para o nó anterior ao início da sublista (m-1)
  (m - 1).times do
    prev = prev.next
  end

  # 'current' será o início da sublista a ser revertida (o nó m)
  current = prev.next
  # 'tail' será o último nó da sublista revertida, que se tornará o primeiro após a reversão
  tail = current

  # 'next_node' é usado para iterar e reverter
  next_node = nil
  # 'temp_prev' e 'temp_current' são para a reversão temporária
  temp_prev = nil
  temp_current = current

  # Reverter a sublista de m para n
  (n - m + 1).times do
    next_node = temp_current.next
    temp_current.next = temp_prev
    temp_prev = temp_current
    temp_current = next_node
  end

  # Conectar as partes invertidas com o restante da lista
  prev.next = temp_prev
  tail.next = temp_current

  dummy.next
end

# Função auxiliar para imprimir a lista
def print_list(head)
  nodes = []
  current = head
  while current
    nodes << current.val
    current = current.next
  end
  nodes.join(" -> ")
end

# Exemplo de uso:
# head = [1, 2, 3, 4, 5], m = 2, n = 4
node1 = ListNode.new(1)
node2 = ListNode.new(2)
node3 = ListNode.new(3)
node4 = ListNode.new(4)
node5 = ListNode.new(5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

puts "Lista original: #{print_list(node1)}"
reversed_head = reverse_between(node1, 2, 4)
puts "Lista revertida: #{print_list(reversed_head)}" # Saída: Lista revertida: 1 -> 4 -> 3 -> 2 -> 5
