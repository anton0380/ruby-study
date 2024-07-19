# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers(matrix)
  max_line = Array.new(matrix[0].size, [0, false])
  matrix.each do |line|
    min = line.min
    index = line.index(min)
    max_line.each_with_index do |el, i|
      luck = i == index
      max_line[i] = [line[i], luck] if el[0] < line[i]
    end
  end
  lucky_array = []
  max_line.each do |el|
    lucky_array.push(el[0]) if el[1]
  end
  lucky_array
end

p lucky_numbers([[3, 7, 8], [9, 11, 13], [15, 16, 17]])
