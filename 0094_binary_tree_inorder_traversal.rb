# https://leetcode.com/problems/binary-tree-inorder-traversal/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    return [] unless self.node
    self.traverse(node)
    self.result
  end

  private

  def traverse(node)
    self.traverse(node.left) if node.left
    self.result << node.val
    self.traverse(node.right) if node.right
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
# @return {Integer[]}
def inorder_traversal(root)
  Traverse.new(root).execute
end
