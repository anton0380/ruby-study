# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[][]} descriptions
# @return {TreeNode}
def create_binary_tree(descriptions)
  hash_left = {}
  hash_right = {}
  hash_top = {}
  result = []
  descriptions.each do |d|
    if d[2] == 1
      hash_left[d[0]] = d[1]
    else
      hash_right[d[0]] = d[1]
    end
    hash_top[d[1]] = d[0]
  end
  start = descriptions[0][0]
  # find top
  loop do
    break if hash_top[start].nil?

    start = hash_top[start]
  end
  result.push(start)
  line = [start]
  loop do
    result, line = add_level(result, line, hash_left, hash_right)
    break if line.empty?
  end
  while result.last.nil?
    result.pop
  end
  # result.map { |e| e.nil? ? 'null' : e }
  # result = result.reduce('') do |s, el|
  #   val = el.nil? ? 'null' : el.to_s
  #   s + val + ','
  # end
  # result = '[' + result[..-2] + ']'
  result
end

def add_level(result, line, hash_left, hash_right)
  new_line = []
  line.each do |el|
    left = hash_left[el]
    right = hash_right[el]
    new_line.push(left) if left
    new_line.push(right) if right
    result += [left, right]
  end
  [result, new_line]
end



descriptions = [[20, 15, 1], [20, 17, 0], [50, 20, 1], [50, 80, 0], [80, 19, 1]]
p create_binary_tree(descriptions)
# [50,20,80,15,17,19]
descriptions = [[1, 2, 1], [2, 3, 0], [3, 4, 1]]
p create_binary_tree(descriptions)
# [1,2,null,null,3,4]
