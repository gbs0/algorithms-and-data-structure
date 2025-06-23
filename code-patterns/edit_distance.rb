# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
  m = word1.length
  n = word2.length

  # Cria uma tabela DP (m+1 x n+1) para armazenar os resultados dos subproblemas.
  # dp[i][j] representará a distância de edição para transformar word1[0...i-1]
  # em word2[0...j-1].
  dp = Array.new(m + 1) { Array.new(n + 1) }

  # Inicializa a primeira linha e a primeira coluna
  # dp[i][0] = i (para transformar uma string de i caracteres em uma string vazia,
  #               precisamos i exclusões)
  (0..m).each do |i|
    dp[i][0] = i
  end
  # dp[0][j] = j (para transformar uma string vazia em uma string de j caracteres,
  #               precisamos j inserções)
  (0..n).each do |j|
    dp[0][j] = j
  end

  # Preenche o restante da tabela DP
  (1..m).each do |i|
    (1..n).each do |j|
      # Se os caracteres atuais forem iguais, não há custo adicional
      if word1[i - 1] == word2[j - 1]
        dp[i][j] = dp[i - 1][j - 1]
      else
        # Se os caracteres forem diferentes, consideramos as três operações:
        # 1. Inserção: dp[i][j - 1] (inserir o caractere de word2 em word1)
        # 2. Exclusão: dp[i - 1][j] (excluir o caractere de word1)
        # 3. Substituição: dp[i - 1][j - 1] (substituir o caractere de word1 pelo de word2)
        # Escolhemos o mínimo dessas operações + 1 (pelo custo da operação)
        dp[i][j] = [
          dp[i][j - 1],     # Inserção
          dp[i - 1][j],     # Exclusão
          dp[i - 1][j - 1]  # Substituição
        ].min + 1
      end
    end
  end

  # O resultado final é a distância de edição para transformar word1 em word2
  dp[m][n]
end

# --- Exemplos de uso ---
puts "Distância de Edição de 'horse' para 'ros': #{min_distance("horse", "ros")}"     # Saída: 3
puts "Distância de Edição de 'intention' para 'execution': #{min_distance("intention", "execution")}" # Saída: 5
puts "Distância de Edição de 'a' para 'b': #{min_distance("a", "b")}"                 # Saída: 1
puts "Distância de Edição de 'kitten' para 'sitting': #{min_distance("kitten", "sitting")}" # Saída: 3
