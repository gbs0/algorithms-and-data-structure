# @param {Integer[]} dims (array de dimensões, onde dims[i-1] x dims[i] é a dimensão da i-ésima matriz)
# @return {Integer}
def matrix_chain_multiplication(dims)
  n = dims.length - 1 # Número de matrizes

  # dp[i][j] armazenará o custo mínimo para multiplicar as matrizes de i a j
  # A matriz dp terá tamanho (n+1) x (n+1)
  dp = Array.new(n + 1) { Array.new(n + 1, 0) }

  # l é o comprimento da cadeia (número de matrizes)
  (2..n).each do |l|
    # i é o índice de início da cadeia
    (1..n - l + 1).each do |i|
      j = i + l - 1 # j é o índice de fim da cadeia

      # Inicializa com um valor muito grande
      dp[i][j] = Float::INFINITY

      # k é o ponto de divisão para a cadeia
      (i...j).each do |k|
        # Custo = (custo da sub-cadeia esquerda) + (custo da sub-cadeia direita) + (custo da multiplicação delas)
        cost = dp[i][k] + dp[k + 1][j] + dims[i - 1] * dims[k] * dims[j]
        dp[i][j] = [dp[i][j], cost].min
      end
    end
  end

  # O custo mínimo para multiplicar todas as matrizes (de 1 a n)
  dp[1][n]
end

# --- Exemplos de uso ---
# Exemplo 1: A(10x30), B(30x5), C(5x60)
# dims = [10, 30, 5, 60] -> n = 3 matrizes
puts "Custo mínimo da multiplicação de cadeias [[10,30],[30,5],[5,60]]: #{matrix_chain_multiplication([10, 30, 5, 60])}" # Saída: 4500

# Exemplo 2: A(40x20), B(20x30), C(30x10), D(10x30)
# dims = [40, 20, 30, 10, 30] -> n = 4 matrizes
puts "Custo mínimo da multiplicação de cadeias [[40,20],[20,30],[30,10],[10,30]]: #{matrix_chain_multiplication([40, 20, 30, 10, 30])}" # Saída: 26000

# Exemplo 3: A(1x2), B(2x3), C(3x4)
# dims = [1, 2, 3, 4] -> n = 3 matrizes
puts "Custo mínimo da multiplicação de cadeias [[1,2],[2,3],[3,4]]: #{matrix_chain_multiplication([1, 2, 3, 4])}" # Saída: 18 ( (1x2x3) + (1x3x4) = 6 + 12 = 18 )
