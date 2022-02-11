# https://leetcode.com/problems/sum-of-left-leaves/

class Traverse
  attr_accessor :node, :sum

  def initialize(node)
    @node = node
    @sum = 0
  end

  def execute
    self.traverse(node, false)
    self.sum
  end

  private

  def traverse(node, is_left)
    self.traverse(node.left, true) if node.left
    self.traverse(node.right, false) if node.right
    self.sum += node.val if !node.left && !node.right && is_left
  end
end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def sum_of_left_leaves(root)
  Traverse.new(root).execute
end
