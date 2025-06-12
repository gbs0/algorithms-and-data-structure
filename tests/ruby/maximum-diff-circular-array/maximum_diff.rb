# @param {Integer[]} nums
# @return {Integer}
def max_adjacent_distance(nums)
  values = []

  nums.each_with_index do |num, index|
    if (index != (nums.length - 1))
      values << (nums[index + 1] - num)
    else
      values << (num.to_i - (nums[0].to_i))
    end

    index += 1
  end

  # Return maximum diff result
  return values.sort.reverse.first.abs
end
