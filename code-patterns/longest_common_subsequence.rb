# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  m = text1.length
  n = text2.length

  # Cria uma tabela DP (m+1 x n+1) inicializada com zeros.
  # dp[i][j] representará o comprimento do LCS das primeiras i letras de text1
  # e as primeiras j letras de text2.
  dp = Array.new(m + 1) { Array.new(n + 1, 0) }

  # Preenche a tabela DP
  (1..m).each do |i|
    (1..n).each do |j|
      # Se os caracteres atuais correspondem
      if text1[i - 1] == text2[j - 1]
        # Adiciona 1 ao LCS do subproblema anterior (sem esses caracteres)
        dp[i][j] = 1 + dp[i - 1][j - 1]
      else
        # Se os caracteres não correspondem, pega o máximo entre:
        # 1. LCS sem o caractere atual de text1
        # 2. LCS sem o caractere atual de text2
        dp[i][j] = [dp[i - 1][j], dp[i][j - 1]].max
      end
    end
  end

  # O comprimento do LCS das duas strings completas está em dp[m][n]
  dp[m][n]
end

# --- Exemplos de uso ---
puts "LCS de 'abcde' e 'ace': #{longest_common_subsequence("abcde", "ace")}"   # Saída: 3
puts "LCS de 'abc' e 'abc': #{longest_common_subsequence("abc", "abc")}"       # Saída: 3
puts "LCS de 'abc' e 'def': #{longest_common_subsequence("abc", "def")}"       # Saída: 0
puts "LCS de 'bl' e 'yby': #{longest_common_subsequence("bl", "yby")}"         # Saída: 1 (b)
