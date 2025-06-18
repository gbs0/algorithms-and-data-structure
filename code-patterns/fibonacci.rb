# @param {Integer} n
# @return {Integer}
def fib(n)
  # Casos base
  return 0 if n == 0
  return 1 if n == 1

  # Cria um array (ou hash) para armazenar os resultados dos subproblemas
  # dp[i] armazenará o i-ésimo número de Fibonacci
  dp = Array.new(n + 1)

  # Inicializa os casos base
  dp[0] = 0
  dp[1] = 1

  # Preenche a tabela dp de forma iterativa (bottom-up)
  (2..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end

  # O resultado final é o n-ésimo número de Fibonacci armazenado em dp[n]
  dp[n]
end

# --- Exemplos de uso ---
puts "O 0-ésimo número de Fibonacci é: #{fib(0)}" # Saída: 0
puts "O 1-ésimo número de Fibonacci é: #{fib(1)}" # Saída: 1
puts "O 5-ésimo número de Fibonacci é: #{fib(5)}" # Saída: 5
puts "O 10-ésimo número de Fibonacci é: #{fib(10)}" # Saída: 55
puts "O 20-ésimo número de Fibonacci é: #{fib(20)}" # Saída: 6765
