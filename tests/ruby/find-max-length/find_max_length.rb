# @param {Integer[]} nums
# @return {Integer}
def find_max_length(nums)
  ocurrences = {}
  total = 0
  max_length = 0

  ocurrences[0] = -1

  nums.each_with_index do |num, index|
    if num.zero?
      nums[index] = -1
    end
    max_length += nums[index]

    if ocurrences.key?(max_length)
      total = max(total, index - ocurrences[max_length])
    else
      ocurrences[max_length] = index
    end
  end

  return total
end

def max(x, y)
  return x > y ? x : y
end
