def two_pointers(nums, target)
  left = 0
  right = nums.length - 1

  while left < right
    current_sum = nums[left] + nums[right]
    if current_sum == target
      return [nums[left], nums[right]] # Ou [left, right] se precisar dos índices
    elsif current_sum < target
      left += 1
    else
      right -= 1
    end
  end
  return nil # Nenhum par encontrado
end

# Exemplo de uso:
nums = [1, 2, 3, 4, 6]
target = 6
result = two_pointers(nums, target)
puts "Par que soma #{target}: #{result.inspect}" # Saída: Par que soma 6: [2, 4] (se for para retornar os valores)
# Se o problema pedir os índices [1, 3] é o correto, dependendo da interpretação do "Output: [1, 3]"
# O exemplo na explicação mostra [1, 3] como sendo os valores 2 e 4, que estão nos índices 1 e 3.
# Se o output for para ser os *índices*, o retorno seria [1, 3] (se o problema pedir índices baseados em 0)
# Se o output for para ser os *valores*, o retorno seria [2, 4].
# Para retornar os índices, o `return [nums[left], nums[right]]` mudaria para `return [left, right]`.
