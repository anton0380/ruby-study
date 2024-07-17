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
  root, nodes = fun(root, to_delete)
  result = []
  result = [root] unless root.nil?
  result += nodes unless nodes.nil?
  result
end

def fun(root, to_delete)
  nodes1 = []
  nodes2 = []
  left, nodes1 = fun(root.left, to_delete) unless root.left.nil?
  right, nodes2 = fun(root.right, to_delete) unless root.right.nil?
  if to_delete.include? root.val
    d = nodes1 + nodes2
    d += [left] unless left.nil?
    d += [right] unless right.nil?
    return [nil, d]
  end
  [TreeNode.new(root.val, left, right), nodes1 + nodes2]
end

root = TreeNode.new(
  1, TreeNode.new(2, TreeNode.new(4), TreeNode.new(5)), TreeNode.new(3, TreeNode.new(6), TreeNode.new(7))
)
to_delete = [3, 5]
puts del_nodes(root, to_delete) # Output: [[1,2,null,4],[6],[7]]
root = TreeNode.new(1, TreeNode.new(2, TreeNode.new(4)), TreeNode.new(3))
to_delete = [3]
puts del_nodes(root, to_delete) # Output: [[1,2,4]]
