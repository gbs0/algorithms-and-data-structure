# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  ways = 1 # Step 0, 1 way.
  step_one, step_two = 0,0 # Step 1 and 2, not calcutated.
  (1..n).each do |i|
    step_one, step_two = step_one + ways, step_two + ways
    ways, step_one = step_one, step_two
    step_two = 0
  end
  return ways
end
