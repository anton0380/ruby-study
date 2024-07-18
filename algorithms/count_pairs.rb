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

def compare_path(leaf1, leaf2, distance)
  dist1 = 0
  leaf1.reverse_each do |el1|
    dist1 += 1
    dist2 = 0
    leaf2.reverse_each do |el2|
      dist2 += 1
      if el1 == el2
        return true if dist1 + dist2 <= distance

        return false
      end
    end
  end
  false
end

def find_leaves(node, distance, leaves, path)
  if node.left.nil? && node.right.nil?
    if path.size > distance - 1
      leaves.push(path[(1 - distance)..])
    else
      leaves.push(path)
    end
  else
    path = Array.new(path)
    path.push(node.val)
    find_leaves(node.left, distance, leaves, path) unless node.left.nil?
    find_leaves(node.right, distance, leaves, path) unless node.right.nil?
  end
end
