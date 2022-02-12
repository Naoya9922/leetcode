# https://leetcode.com/problems/validate-binary-search-tree/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    self.traverse(node, [], [], [])
    self.result
  end

  private

  def traverse(node, pos, neg, path)
    r = pos.all?{|p| p > node.val} && neg.all?{|n| n < node.val}
    path += [r]
    self.traverse(node.left, pos.dup << node.val, neg, path) if node.left
    self.traverse(node.right, pos, neg.dup << node.val, path) if node.right
    self.result << path if !node.left && !node.right
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
# @return {Boolean}
def is_valid_bst(root)
  result = Traverse.new(root).execute
  result.all?{|r| r.all?(true)}
end
