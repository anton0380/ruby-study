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
# @param {Integer} start_value
# @param {Integer} dest_value
# @return {String}
def get_directions(root, start_value, dest_value)
  start_path, dest_path = check_node(root, '', nil, nil, start_value, dest_value)
  new_start_path = start_path
  new_dest_path = dest_path
  chars = start_path.chars
  chars.each_with_index do |ch, i|
    if ch == dest_path[i]
      new_start_path = new_start_path[1..]
      new_dest_path = new_dest_path[1..]
    else
      break
    end
  end
  new_start_path = 'U' * new_start_path.size
  new_start_path + new_dest_path
end

def check_node(node, my_path, start_path, dest_path, start_value, dest_value)
  new_start_path = start_path
  new_dest_path = dest_path
  new_start_path = my_path if node.val == start_value
  new_dest_path = my_path if node.val == dest_value
  if (new_start_path.nil? || new_dest_path.nil?) && !node.left.nil?
    new_start_path, new_dest_path = check_node(node.left, my_path + 'L', new_start_path, new_dest_path, start_value, dest_value)
  end
  if (new_start_path.nil? || new_dest_path.nil?) && !node.right.nil?
    new_start_path, new_dest_path = check_node(node.right, my_path + 'R', new_start_path, new_dest_path, start_value, dest_value)
  end
  [new_start_path, new_dest_path]
end

start_value = 3
dest_value = 6
root = TreeNode.new(5, TreeNode.new(1, TreeNode.new(3)), TreeNode.new(2, TreeNode.new(6), TreeNode.new(4)))
p get_directions(root, start_value, dest_value)
