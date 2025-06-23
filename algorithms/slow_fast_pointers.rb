class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def has_cycle(head)
  return false if head.nil? || head.next.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next

    return true if slow == fast
  end

  false
end

# Exemplo de uso:
# Criando uma lista encadeada com ciclo: 1 -> 2 -> 3 -> 4 -> 2 (ciclo para o nó 2)
node1 = ListNode.new(1)
node2 = ListNode.new(2)
node3 = ListNode.new(3)
node4 = ListNode.new(4)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node2 # Cria o ciclo

puts "A lista tem ciclo? #{has_cycle(node1)}" # Saída: A lista tem ciclo? true

# Criando uma lista encadeada sem ciclo: 1 -> 2 -> 3
node_a = ListNode.new(1)
node_b = ListNode.new(2)
node_c = ListNode.new(3)

node_a.next = node_b
node_b.next = node_c

puts "A lista tem ciclo? #{has_cycle(node_a)}" # Saída: A lista tem ciclo? false
