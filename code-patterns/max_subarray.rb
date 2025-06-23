# @param {Integer[]} nums
# @return {Integer}
def max_subarray(nums)
  # Se o array estiver vazio, a soma máxima é 0
  return 0 if nums.empty?

  # Inicializa current_max e global_max com o primeiro elemento do array
  current_max = nums[0]
  global_max = nums[0]

  # Itera a partir do segundo elemento
  (1...nums.length).each do |i|
    num = nums[i]

    # current_max é o maior entre:
    # 1. Apenas o número atual (começando um novo sub-array)
    # 2. O número atual somado ao current_max anterior (estendendo o sub-array)
    current_max = [num, current_max + num].max

    # global_max é o maior valor encontrado até agora
    global_max = [global_max, current_max].max
  end

  global_max
end

# --- Exemplos de uso ---
nums1 = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
puts "Soma máxima do sub-array: #{max_subarray(nums1)}" # Saída: 6

nums2 = [1]
puts "Soma máxima do sub-array: #{max_subarray(nums2)}" # Saída: 1

nums3 = [5, 4, -1, 7, 8]
puts "Soma máxima do sub-array: #{max_subarray(nums3)}" # Saída: 23

nums4 = [-1, -2, -3, -4]
puts "Soma máxima do sub-array: #{max_subarray(nums4)}" # Saída: -1 (o maior número negativo)
