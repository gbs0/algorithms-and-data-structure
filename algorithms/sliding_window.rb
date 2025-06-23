def max_subarray_sum_sliding_window(nums, k)
  max_sum = 0
  window_sum = 0
  window_start = 0

  # Calcula a soma inicial da primeira janela
  (0...k).each do |i|
    window_sum += nums[i]
  end
  max_sum = window_sum

  # Desliza a janela
  (k...nums.length).each do |window_end|
    window_sum += nums[window_end] - nums[window_start]
    window_start += 1
    max_sum = [max_sum, window_sum].max
  end
  max_sum
end

# Exemplo de uso:
nums = [2, 1, 5, 1, 3, 2]
k = 3
max_sum = max_subarray_sum_sliding_window(nums, k)
puts "Soma máxima do sub-array de tamanho #{k}: #{max_sum}" # Saída: 9
