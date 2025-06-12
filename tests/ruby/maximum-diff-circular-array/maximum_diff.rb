# @param {Integer[]} nums
# @return {Integer}
def max_adjacent_distance(nums)
  # values = []

  # nums.each_with_index do |num, index|
  #   if (index != (nums.length - 1))
  #     values << (nums[index + 1] - num)
  #   else
  #     values << (num.to_i - (nums[0].to_i))
  #   end

  #   index += 1
  # end

  # # Return maximum diff result
  # return values.sort.reverse.first.abs

  # Ordem crescente
  max_digit = nums.sort.last
  low_digit = nums.sort.first

  # [3,2,-5,-3]

  p "#{max_digit}: #{(low_digit...max_digit).to_a}"
  # Return maximum diff result
  return (low_digit...max_digit).to_a.size.abs
end
