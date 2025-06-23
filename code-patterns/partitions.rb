# @param {String} s
# @return {String[][]}
def partition(s)
  result = []
  n = s.length

  # Função auxiliar para verificar se uma substring é um palíndromo
  def is_palindrome?(str)
    str == str.reverse
  end

  # Função de backtracking para encontrar todas as partições
  # start_index: o índice a partir do qual começamos a buscar partições
  # current_partition: a lista de substrings que formam a partição atual
  def backtrack(start_index, current_partition, all_partitions, s_str)
    # Condição base: se chegamos ao final da string, a partição atual é válida
    if start_index == s_str.length
      all_partitions << current_partition.dup # Adiciona uma cópia da partição
      return
    end

    # Itera sobre todas as possíveis "quebras" a partir do start_index
    (start_index...s_str.length).each do |i|
      # substring_candidate é a substring do start_index até o i
      substring_candidate = s_str[start_index..i]

      # Se a substring_candidate for um palíndromo
      if is_palindrome?(substring_candidate)
        # Escolha: Adiciona a substring palíndrômica à partição atual
        current_partition << substring_candidate

        # Explore: Chama recursivamente para a próxima parte da string
        backtrack(i + 1, current_partition, all_partitions, s_str)

        # Desfazer (Backtrack): Remove a substring para explorar outras possibilidades
        current_partition.pop
      end
    end
  end

  # Inicia o processo de backtracking
  backtrack(0, [], result, s)
  result
end

# --- Exemplos de uso ---
puts "Partições de 'aab': #{partition("aab").inspect}" # Saída: [["a", "a", "b"], ["aa", "b"]]
puts "Partições de 'a': #{partition("a").inspect}"     # Saída: [["a"]]
puts "Partições de 'racecar': #{partition("racecar").inspect}"
# Saída: [["r", "a", "c", "e", "c", "a", "r"], ["r", "acecar"], ["racecar"]] (e mais outras combinações)
puts "Partições de 'efe': #{partition("efe").inspect}" # Saída: [["e", "f", "e"], ["efe"]]
