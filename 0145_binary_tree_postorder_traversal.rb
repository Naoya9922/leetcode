# https://leetcode.com/problems/binary-tree-postorder-traversal/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    return [] unless node
    self.traverse(node)
    self.result
  end

  private

  def traverse(node)
    self.traverse(node.left) if node.left
    self.traverse(node.right) if node.right
    self.result += [node.val]
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
def postorder_traversal(root)
  Traverse.new(root).execute
end
