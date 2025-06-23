# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  return 0 if nums.empty?

  n = nums.length
  # dp[i] armazena o comprimento da maior subsequência crescente que termina em nums[i].
  dp = Array.new(n, 1) # Cada elemento por si só é uma LIS de comprimento 1

  # Itera sobre o array para preencher a tabela dp
  (1...n).each do |i|
    (0...i).each do |j|
      # Se nums[i] for maior que nums[j], significa que nums[i] pode estender
      # uma LIS que termina em nums[j].
      if nums[i] > nums[j]
        # Atualiza dp[i] para ser o máximo entre seu valor atual
        # e (1 + o comprimento da LIS que termina em nums[j]).
        dp[i] = [dp[i], 1 + dp[j]].max
      end
    end
  end

  # O comprimento da LIS geral é o valor máximo em toda a tabela dp.
  dp.max
end

# --- Exemplos de uso ---
puts "LIS de [10, 9, 2, 5, 3, 7, 101, 18]: #{length_of_lis([10, 9, 2, 5, 3, 7, 101, 18])}" # Saída: 4
puts "LIS de [0, 1, 0, 3, 2, 3]: #{length_of_lis([0, 1, 0, 3, 2, 3])}"                   # Saída: 4 ([0, 1, 2, 3])
puts "LIS de [7, 7, 7, 7, 7, 7, 7]: #{length_of_lis([7, 7, 7, 7, 7, 7, 7])}"             # Saída: 1
puts "LIS de []: #{length_of_lis([])}"                                                  # Saída: 0
