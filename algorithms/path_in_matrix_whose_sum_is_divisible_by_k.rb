# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer}
def number_of_paths(grid, k)
  m = grid.length
  n = grid[0].length
  arr = Array.new(m) { Array.new(n) { Array.new(k, 0) } }
  (0...m).each do |i|
    (0...n).each do |j|
      val = grid[i][j]
      if i == 0
        if j == 0
          arr[i][j][val % k] = 1
        else
          (0...k).each do |r|
            count = arr[i][j-1][r]
            if count > 0
              p = (r + val) % k
              arr[i][j][p] += count
            end
          end
        end
      else
        if j == 0
          (0...k).each do |r|
            count = arr[i-1][j][r]
            if count > 0
              p = (r + val) % k
              arr[i][j][p] += count
            end
          end
        else
          (0...k).each do |r|
            count = arr[i-1][j][r] + arr[i][j-1][r]
            if count > 0
              p = (r + val) % k
              arr[i][j][p] += count
            end
          end
        end
      end
    end
  end
  arr[m-1][n-1][0]
end

grid = [[5,2,4],[3,0,5],[0,7,2]]
k = 3
puts number_of_paths grid, k # 2

grid = [[0,0]]
k = 5
puts number_of_paths grid, k # 1

grid = [[7,3,4,9],[2,3,6,2],[2,3,7,0]]
k = 1
puts number_of_paths grid, k # 10