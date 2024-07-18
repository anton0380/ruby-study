# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end
# @param {TreeNode} root
# @param {Integer} distance
# @return {Integer}
def count_pairs(root, distance)
  leaves = []
  path = []
  find_leaves(root, distance, leaves, path)
  count = 0
  leaves.each_with_index do |l1, i|
    leaves.each_with_index do |l2, j|
      next if i == j
      count += 1 if compare_path(l1, l2, distance)
    end
  end
  count / 2
end

def find_leaves(node, distance, leaves, path)
  if node.left.nil? && node.right.nil?
    leaves.push(path)
  else
    unless node.left.nil?
      path_left = Array.new(path)
      path_left.push([node.val, 0])
      find_leaves(node.left, distance, leaves, path_left)
    end
    unless node.right.nil?
      path_right = Array.new(path)
      path_right.push([node.val, 1])
      find_leaves(node.right, distance, leaves, path_right)
    end
  end
end

def compare_path(leaf1, leaf2, distance)
  d = 2
  state = 0
  [leaf1.size, leaf2.size].max.times do |i|
    next if state == 0 && leaf1[i] == leaf2[i]
    if state == 0
      unless leaf1[i].nil? || leaf2[i].nil?
        next if leaf1[i][0] == leaf2[i][0]
      end
      state = 1
    end
    d += 1 unless leaf1[i].nil?
    d += 1 unless leaf2[i].nil?
    return false if d > distance
  end
  d <= distance
end