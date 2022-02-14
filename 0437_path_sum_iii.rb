# https://leetcode.com/problems/path-sum-iii/

class Traverse
  attr_accessor :node, :sum, :target_sum

  def initialize(node, target_sum)
    @node = node
    @sum = 0
    @target_sum = target_sum
  end

  def execute
    return 0 unless self.node
    self.traverse(self.node, [])
    self.sum
  end

  private

  def traverse(node, path)
    path += [node.val]
    tmp_sum = 0
    path.reverse.each do |val|
      tmp_sum += val
      self.sum += 1 if tmp_sum == self.target_sum
    end
    self.traverse(node.left, path) if node.left
    self.traverse(node.right, path) if node.right
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
# @return {Integer}
def path_sum(root, target_sum)
  Traverse.new(root, target_sum).execute
end
