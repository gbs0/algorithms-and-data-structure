
def next_greater_element(nums)
  n = nums.length
  result = Array.new(n, -1) # Inicializa o array de resultados com -1
  stack = [] # A pilha armazenará índices

  (0...n).each do |i|
    # Enquanto a pilha não estiver vazia E o elemento no topo da pilha
    # for menor que o elemento atual, então o elemento atual é o próximo maior
    while !stack.empty? && nums[stack.last] < nums[i]
      result[stack.pop] = nums[i]
    end
    stack.push(i) #  Adiciona o índice do elemento atual na pilha
  end

  result
end

# Exemplo de uso:
nums = [2, 1, 2, 4, 3]
output = next_greater_element(nums)
puts "Próximo elemento maior: #{output.inspect}" # Saída: Próximo elemento maior: [4, 2, 4, -1, -1]
