# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  result = []

  # Inicializa o array de elementos usados com 'false' para todos os elementos
  used_elements = Array.new(nums.length, false)

  # Inicia o processo de backtracking com uma permutação vazia
  backtrack([], nums, used_elements, result)

  result
end

# A função auxiliar recursiva para gerar permutações
# current_permutation: a permutação sendo construída
# used_elements: um array booleano (ou hash/set) para rastrear elementos já usados
def backtrack(current_permutation, nums_array, used_elements, all_permutations)
  # Condição base: se a permutação atual tem o mesmo tamanho que o array original,
  # significa que uma permutação completa foi formada.
  if current_permutation.length == nums_array.length
    all_permutations << current_permutation.dup # Adiciona uma cópia da permutação
    return
  end

  # Itera sobre todos os números possíveis no array original
  (0...nums_array.length).each do |i|
    # Se o número na posição i já foi usado nesta permutação, pule-o
    next if used_elements[i]

    # Escolha: Adicionar o número à permutação atual e marcá-lo como usado
    current_permutation << nums_array[i]
    used_elements[i] = true

    # Explore: Chamar recursivamente para construir o restante da permutação
    backtrack(current_permutation, nums_array, used_elements, all_permutations)

    # Desfazer (Backtrack): Remover o número da permutação atual e marcá-lo como não usado
    # Isso permite que outras permutações sejam exploradas
    used_permutation.pop
    used_elements[i] = false
  end
end

# --- Exemplos de uso ---
nums1 = [1, 2, 3]
puts "Permutações de #{nums1.inspect}: #{permute(nums1).inspect}"
# Saída: [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

nums2 = [0, 1]
puts "Permutações de #{nums2.inspect}: #{permute(nums2).inspect}"
# Saída: [[0, 1], [1, 0]]

nums3 = [1]
puts "Permutações de #{nums3.inspect}: #{permute(nums3).inspect}"
# Saída: [[1]]
