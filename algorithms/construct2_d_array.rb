# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
  return [] if original.count != m * n
  res = []
  m.times do |i|
    arr = original[i*n..(i+1)*n-1]
    res.push arr
  end
  res
end

original = [1,2,3,4]
m = 2
n = 2
p construct2_d_array(original, m, n) # [[1,2],[3,4]]
original = [1,2,3]
m = 1
n = 3
p construct2_d_array(original, m, n) # [[1,2,3]]
original = [1,2]
m = 1
n = 1
p construct2_d_array(original, m, n) # []