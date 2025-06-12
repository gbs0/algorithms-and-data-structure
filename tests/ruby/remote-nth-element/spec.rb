require 'rspec'
require_relative 'remove_nth_from_end'

class ListNode
  attr_accessor :val, :next
  def initialize(val, _next = nil)
    @val = val
    @next = _next
  end
end

describe 'Remote nth element from end of list' do
  it 'Case 1' do
    head = ListNode.new(1, ListNode.new(2, ListNode.new(3, ListNode.new(4, ListNode.new(5)))))
    n = 2
    expected = [1, 2, 3, 5]
    expect(remove_nth_from_end(head, n)).to eq(expected)
  end

  it 'Case 2' do
    head = ListNode.new(1)
    n = 1
    expected = []
    expect(remove_nth_from_end(head, n)).to eq(expected)
  end

  it 'Case 3' do
    head = ListNode.new(1, ListNode.new(2))
    n = 1
    expected = [1]
    expect(remove_nth_from_end(head, n)).to eq(expected)
  end
end
