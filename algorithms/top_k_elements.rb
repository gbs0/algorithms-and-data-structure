# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  # Passo 1: Contar a frequência de cada número
  occurrences = Hash.new(0) # Inicializa o hash com valor padrão 0 para novas chaves
  nums.each do |num|
    occurrences[num] += 1
  end

  # Passo 2: Converter o hash em um array de pares [número, frequência]
  # e ordenar decrescentemente pela frequência.
  # Aqui usamos `sort_by` para ordenar. O `last` é a frequência e o `first` é o número.
  # Queremos os elementos com as MAIORES frequências, então ordenamos em ordem decrescente.
  sorted_by_frequency = occurrences.sort_by { |_num, frequency| -frequency }

  # Passo 3: Pegar os k primeiros elementos do array ordenado (que são os mais frequentes)
  # e extrair apenas o número (a chave).
  result = []

  (0...k).each do |i|
    # sorted_by_frequency[i] é um array [número, frequência]
    result.push(sorted_by_frequency[i].first)
  end

  result
end

p top_k_frequent([4,1,-1,2,-1,2,3], 2)
