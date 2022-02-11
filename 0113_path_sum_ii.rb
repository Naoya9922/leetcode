# https://leetcode.com/problems/path-sum-ii/

class Traverse
  attr_accessor :node, :result, :target_sum

  def initialize(node, target_sum)
    @node = node
    @target_sum = target_sum
    @result = []
  end

  def execute
    return [] unless node
    self.traverse(node, [])
    self.result
  end

  private

  def traverse(node, path)
    path += [node.val]
    self.traverse(node.left, path) if node.left
    self.traverse(node.right, path) if node.right
    if !node.left && !node.right && path.sum == self.target_sum
      self.result << path
    end
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
# @param {Integer} target_sum
# @return {Integer[][]}
def path_sum(root, target_sum)
  Traverse.new(root, target_sum).execute
end
