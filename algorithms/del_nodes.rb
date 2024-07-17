# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def for_to_s
    left = ''
    right = ''
    unless @left.nil? && @right.nil?
      left = @left.nil? ? ',null' : ",#{@left.for_to_s}"
      right = @right.nil? ? ',null' : ",#{@right.for_to_s}"
    end
    @val.to_s + left + right
  end

  def to_s
    "[#{for_to_s}]"
  end
end
# @param {TreeNode} root
# @param {Integer[]} to_delete
# @return {TreeNode[]}
def del_nodes(root, to_delete)
  root
end

root = TreeNode.new(
  1, TreeNode.new(2, TreeNode.new(4), TreeNode.new(5)), TreeNode.new(3, TreeNode.new(6), TreeNode.new(7))
)
to_delete = [3, 5]
puts del_nodes(root, to_delete)
root = TreeNode.new(1, TreeNode.new(2, TreeNode.new(4)), TreeNode.new(3))
to_delete = [3]
puts del_nodes(root, to_delete)
