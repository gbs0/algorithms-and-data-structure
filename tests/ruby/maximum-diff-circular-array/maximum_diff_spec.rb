require 'rspec'
require_relative 'maximum_diff'

describe 'Maximum Difference Between Adjacent Elements in a Circular Array' do
  it 'Case 1' do
    nums = [1, 2, 4]
    expected = 3
    expect(max_adjacent_distance(nums)).to eq(expected)
  end

  it 'Case 2' do
    nums = [-5, -10, -5]
    expected = 5
    expect(max_adjacent_distance(nums)).to eq(expected)
  end

  it 'Case 3' do
    nums = [-2,-5]
    excepted = 3
    expect(max_adjacent_distance(nums)).to eq(expected)
  end

  it 'Case 4' do
    nums = [-2,1,-5]
    expected = 6
    expect(max_adjacent_distance(nums)).to eq(expected)
  end
end
