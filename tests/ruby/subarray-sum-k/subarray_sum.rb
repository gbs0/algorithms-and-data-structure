# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
#    ocurr = {}
#    values = []
#    size = nums.length

#    return 0 if size==1 && nums[0] ==1 && k.zero?
#    return 1 if k == 1 && nums.last == 1
#    return 1 if k.zero?
#    return size if size == 1

#    nums.each_with_index do |num, index|
#      next if num == k
#      next if values.sum == k && index == (nums.size - 1)
#      num.abs < k && index != (nums.size - 1) ? values.push(num) : next
#    end

#    return values.length
  count = 0
  sum = 0
  occur = {}

  occur[0] = 1


  nums.each_with_index do |num, index|
    sum += num

    if (occur.key?(sum - k))
      count += occur[sum - k]
    end

    occur[sum].nil? ? occur[sum] = 0 : occur[sum] += 1
  end

  return count
end


p subarray_sum([1, 1, 1], 2)
