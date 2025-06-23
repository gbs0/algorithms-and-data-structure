# @param {Integer} n
# @return {Integer}
def nth_catalan_number(n)
  # dp[i] armazenará o i-ésimo número de Catalan
  dp = Array.new(n + 1, 0)

  # Caso base
  dp[0] = 1

  # Preenche a tabela DP usando a relação de recorrência
  (1..n).each do |i|
    (0...i).each do |j|
      dp[i] += dp[j] * dp[i - 1 - j]
    end
  end

  dp[n]
end

# --- Exemplos de uso ---
puts "0-ésimo número de Catalan: #{nth_catalan_number(0)}" # Saída: 1
puts "1-ésimo número de Catalan: #{nth_catalan_number(1)}" # Saída: 1
puts "2-ésimo número de Catalan: #{nth_catalan_number(2)}" # Saída: 2
puts "3-ésimo número de Catalan: #{nth_catalan_number(3)}" # Saída: 5
puts "4-ésimo número de Catalan: #{nth_catalan_number(4)}" # Saída: 14
puts "5-ésimo número de Catalan: #{nth_catalan_number(5)}" # Saída: 42
