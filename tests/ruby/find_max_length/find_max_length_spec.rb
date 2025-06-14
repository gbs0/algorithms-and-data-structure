require 'rspec'
require_relative 'find_max_length'


describe 'Given a binary array nums, return the maximum length of a contiguous subarray with an equal number of 0 and 1.' do
  it 'Case 1' do
    nums = [0, 1]
    expected = 2
    expect(find_max_length(nums)).to eq(expected)
  end

  it 'Case 2' do
    nums = [0, 1, 0]
    expected = 2
    expect(find_max_length(nums)).to eq(expected)
  end

  it 'Case 3' do
    nums = [0, 1, 1, 1, 1, 1, 0, 0, 0]
    expected = 6
    expect(find_max_length(nums)).to eq(expected)
  end
end
