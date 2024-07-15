# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end
# @param {Integer[][]} descriptions
# @return {TreeNode}
def create_binary_tree(descriptions)
  hash_left = {}
  hash_right = {}
  hash_top = {}
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
  result = TreeNode.new(start)
  line = [result]
  loop do
    line = add_level(line, hash_left, hash_right)
    break if line.empty?
  end
  result
end

def add_level(line, hash_left, hash_right)
  new_line = []
  line.each do |el|
    left = hash_left[el.val]
    right = hash_right[el.val]
    if left
        node = TreeNode.new(left)
        el.left = node
        new_line.push(node)
    end   
    if right
        node = TreeNode.new(right)
        el.right = node
        new_line.push(node)
    end   
  end
  new_line
end
