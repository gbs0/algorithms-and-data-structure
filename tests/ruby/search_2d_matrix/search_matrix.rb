# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  # Código ineficiente
  # value = []

  # matrix.each do |subarray|
  #   equal = subarray.select { |num| num == target }
  #   value.push(equal.first) if !equal.empty?

  # end

  # value.include?(target)

  # Código eficiente
  matrix_last_index = matrix.size - 1

  row = 0
  column = matrix[0].size - 1

  while row <= matrix_last_index && column >= 0
    curr_value = matrix[row][column]

    if curr_value == target
      return true
    elsif curr_value > target
      column -= 1
    else
      row += 1
    end
  end

  false
end
