# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  result = Array.new(temperatures.size, 0)
  stack = [] # Stack para armazenar índices

  temperatures.each_with_index do |temp, i|
    while !stack.empty? && temperatures[stack.last] < temp
      prev_index = stack.pop
      result[prev_index] = i - prev_index
    end
    stack.push(i)
  end

  result
end


p daily_temperatures([73,74,75,71,69,72,76,73])
