# @param {Integer[]} nums
# @param {Integer} target
# @return {Boolean}
def subset_sum(nums, target)
  n = nums.length

  # dp[j] será true se uma soma 'j' puder ser formada por um subconjunto dos números.
  dp = Array.new(target + 1, false)

  # Caso base: uma soma de 0 pode sempre ser formada (pegando o subconjunto vazio)
  dp[0] = true

  # Itera sobre cada número no conjunto
  (0...n).each do |i|
    num = nums[i]
    # Itera de trás para frente sobre as somas possíveis
    # para evitar usar o mesmo número várias vezes no mesmo "nível" de dp
    (target).downto(num).each do |j|
      # Se a soma 'j' pode ser formada (ou já foi) OU
      # se 'j - num' podia ser formada, então 'j' pode ser formada
      # adicionando 'num' a 'j - num'.
      dp[j] = dp[j] || dp[j - num]
    end
  end

  # O resultado final é se a 'target' pode ser formada
  dp[target]
end

# --- Exemplos de uso ---
puts "Existe subconjunto que soma 9 em [3, 34, 4, 12, 5, 2]? #{subset_sum([3, 34, 4, 12, 5, 2], 9)}" # Saída: true
puts "Existe subconjunto que soma 30 em [3, 34, 4, 12, 5, 2]? #{subset_sum([3, 34, 4, 12, 5, 2], 30)}" # Saída: false
puts "Existe subconjunto que soma 7 em [1, 2, 3, 4, 5]? #{subset_sum([1, 2, 3, 4, 5], 7)}"       # Saída: true (e.g., [2, 5] ou [1, 2, 4])
puts "Existe subconjunto que soma 11 em [1, 2, 3, 4, 5]? #{subset_sum([1, 2, 3, 4, 5], 11)}"     # Saída: true (e.g., [1, 2, 3, 5] ou [1, 5, 5] se fosse ilimitada)
puts "Existe subconjunto que soma 16 em [1, 2, 3, 4, 5]? #{subset_sum([1, 2, 3, 4, 5], 16)}"     # Saída: false (soma total é 15)
