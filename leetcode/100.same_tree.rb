# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  return true if !p && !q

  p&.val == q&.val && is_same_tree(p&.left, q&.left) && is_same_tree(p&.right, q&.right)
end

puts is_same_tree(
  TreeNode.new(1, TreeNode.new(2), TreeNode.new(3)),
  TreeNode.new(1, TreeNode.new(2), TreeNode.new(3))
)

puts is_same_tree(
  TreeNode.new(1, TreeNode.new(2)),
  TreeNode.new(1, nil, TreeNode.new(2))
)

puts is_same_tree(
  TreeNode.new(1, TreeNode.new(2), TreeNode.new(1)),
  TreeNode.new(1, TreeNode.new(1), TreeNode.new(2))
)
