# @param {String} s
# @return {Integer}
require_relative "longest_common_subsequence"

def longest_palindromic_subsequence(s)
  # O problema da maior subsequência palindrômica é equivalente a encontrar
  # o comprimento da Longest Common Subsequence (LCS) entre a string original
  # e sua string invertida.

  # Reutilizamos a função longest_common_subsequence definida anteriormente
  # no padrão LCS.

  s_reversed = s.reverse
  longest_common_subsequence(s, s_reversed)
end

# --- Exemplos de uso ---
# Requer a função `longest_common_subsequence` definida acima
puts "Maior subsequência palindrômica de 'bbbab': #{longest_palindromic_subsequence("bbbab")}" # Saída: 4
puts "Maior subsequência palindrômica de 'cbbd': #{longest_palindromic_subsequence("cbbd")}"   # Saída: 2 ("bb")
puts "Maior subsequência palindrômica de 'a': #{longest_palindromic_subsequence("a")}"         # Saída: 1
puts "Maior subsequência palindrômica de 'agbdba': #{longest_palindromic_subsequence("agbdba")}" # Saída: 5 ("abdba")
