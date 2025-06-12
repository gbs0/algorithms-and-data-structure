# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
  return [] if n.nil?

  index_to_rm = (n - 1)
  values = []
  current = head

  while current
    values << current.val
    current = current&.next
  end

  values.reverse!
  values.delete_at(index_to_rm)
  return values.reverse
end
