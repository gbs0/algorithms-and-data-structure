# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge_intervals(intervals)
  return [] if intervals.empty?

  # 1. Ordenar os intervalos pelo tempo de início
  # Isso é crucial para o algoritmo funcionar corretamente.
  intervals.sort_by! { |interval| interval[0] }

  merged = []

  # Adiciona o primeiro intervalo diretamente ao resultado
  # pois não há nenhum intervalo anterior para comparar
  merged << intervals[0]

  # 2. Iterar pelos intervalos restantes
  (1...intervals.length).each do |i|
    current_interval = intervals[i]
    last_merged_interval = merged.last # O último intervalo que foi mesclado ou adicionado

    # Verifica se há sobreposição:
    # A sobreposição ocorre se o início do intervalo atual for menor ou igual
    # ao fim do último intervalo mesclado.
    if current_interval[0] <= last_merged_interval[1]
      # Há sobreposição, então mescla os intervalos
      # O novo fim será o máximo entre o fim do último mesclado e o fim do atual
      last_merged_interval[1] = [last_merged_interval[1], current_interval[1]].max
    else
      # Não há sobreposição, então adicione o intervalo atual à lista de mesclados
      merged << current_interval
    end
  end

  merged
end

# Exemplos de uso:
intervals1 = [[1, 3], [2, 6], [8, 10], [15, 18]]
p merge_intervals(intervals1) # Saída: [[1, 6], [8, 10], [15, 18]]

intervals2 = [[1, 4], [4, 5]]
p merge_intervals(intervals2) # Saída: [[1, 5]]

intervals3 = [[1, 4], [0, 4]]
p merge_intervals(intervals3) # Saída: [[0, 4]]

intervals4 = [[1, 4], [0, 1]]
p merge_intervals(intervals4) # Saída: [[0, 4]]

intervals5 = [[1, 4], [0, 0]]
p merge_intervals(intervals5) # Saída: [[0, 0], [1, 4]]

intervals6 = [[1, 3]]
p merge_intervals(intervals6) # Saída: [[1, 3]]

intervals7 = []
p merge_intervals(intervals7) # Saída: []
