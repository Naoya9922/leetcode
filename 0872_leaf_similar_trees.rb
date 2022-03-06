# https://leetcode.com/problems/leaf-similar-trees/

class Traverse
  attr_reader :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    self.traverse(node)
    @result
  end

  private

  def traverse(node)
    self.traverse(node.left) if node.left
    self.traverse(node.right) if node.right
    @result << node.val if !node.left && !node.right
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
# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  Traverse.new(root1).execute == Traverse.new(root2).execute
end
