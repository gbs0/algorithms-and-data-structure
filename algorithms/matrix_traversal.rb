# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} new_color
# @return {Integer[][]}
def flood_fill(image, sr, sc, new_color)
  rows = image.length
  cols = image[0].length
  original_color = image[sr][sc]

  # Se a nova cor for a mesma que a cor original, não há nada para fazer.
  # Isso evita loop infinito em alguns casos se não tratarmos o original_color explicitamente.
  return image if original_color == new_color

  # Define as direções para mover: (linha_delta, coluna_delta)
  # Cima, Baixo, Esquerda, Direita
  directions = [[-1, 0], [1, 0], [0, -1], [0, 1]]
  # Inicia o processo de preenchimento a partir da célula sr, sc
  dfs_fill(sr, sc, image, original_color, new_color, rows, cols, directions)

  image # Retorna a imagem modificada
end

# Usaremos uma abordagem de DFS recursiva
# A função dfs_fill fará o trabalho de percorrer e colorir
def dfs_fill(r, c, img, original_c, new_c, rows, cols, dirs)
  # Condições de parada para a recursão:
  # 1. Fora dos limites da imagem
  # 2. A cor da célula atual não é a original (significa que já foi visitada ou não é parte da área a ser preenchida)
  return unless r.between?(0, rows - 1) && c.between?(0, cols - 1) && img[r][c] == original_c

  # Muda a cor da célula atual
  img[r][c] = new_c

  # Explora as células vizinhas
  dirs.each do |dr, dc|
    dfs_fill(r + dr, c + dc, img, original_c, new_c, rows, cols, dirs)
  end
end

# --- Exemplos de uso ---
image1 = [[1, 1, 1], [1, 1, 0], [1, 0, 1]]
sr1 = 1
sc1 = 1
new_color1 = 2
puts "Imagem original: #{image1.inspect}"
output1 = flood_fill(image1, sr1, sc1, new_color1)
puts "Imagem preenchida: #{output1.inspect}"
# Saída esperada: [[2, 2, 2], [2, 2, 0], [2, 0, 1]]

image2 = [[0, 0, 0], [0, 0, 0]]
sr2 = 0
sc2 = 0
new_color2 = 2
puts "Imagem original: #{image2.inspect}"
output2 = flood_fill(image2, sr2, sc2, new_color2)
puts "Imagem preenchida: #{output2.inspect}"
# Saída esperada: [[2, 2, 2], [2, 2, 2]]

image3 = [[0, 0, 0], [0, 1, 0]]
sr3 = 1
sc3 = 1
new_color3 = 1
puts "Imagem original: #{image3.inspect}"
output3 = flood_fill(image3, sr3, sc3, new_color3)
puts "Imagem preenchida: #{output3.inspect}"
# Saída esperada: [[0, 0, 0], [0, 1, 0]] (sem mudança, pois a cor já é a mesma)
