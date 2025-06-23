class PrefixSum
  def initialize(nums)
    @prefix_sum_array = []
    current_sum = 0
    nums.each do |num|
      current_sum += num
      @prefix_sum_array << current_sum
    end
  end

  def sum_range(i, j)
    if i == 0
      @prefix_sum_array[j]
    else
      @prefix_sum_array[j] - @prefix_sum_array[i - 1]
    end
  end
end

# Exemplo de uso:
nums = [1, 2, 3, 4, 5, 6]
prefix_sum_calculator = PrefixSum.new(nums)

# i = 1, j = 3 (índices baseados em 0)
# A soma dos elementos de índice 1 a 3 (2, 3, 4) é 9
puts "Soma do intervalo [1, 3]: #{prefix_sum_calculator.sum_range(1, 3)}" # Saída: 9
