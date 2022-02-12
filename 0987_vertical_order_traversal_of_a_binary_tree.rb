# https://leetcode.com/problems/vertical-order-traversal-of-a-binary-tree/

class Traverse
  attr_accessor :node, :result

  def initialize(node)
    @node = node
    @result = []
  end

  def execute
    self.traverse(node, 0, 0)
    self.result
  end

  private

  def traverse(node, level, val)
    self.traverse(node.left, level+1, val-1) if node.left
    self.traverse(node.right, level+1, val+1) if node.right
    self.result << [node.val, [level, val]]
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
# @return {Integer[][]}
def vertical_traversal(root)
  result = Traverse.new(root).execute
  result = result.group_by{|n, ary| ary.last}.transform_values{|v| v.sort_by{|v2, ary| ary + [v2]}}
  result.to_a.sort_by{|o, _|o}.map(&:last).map{|ary| ary.map(&:first)}
end
