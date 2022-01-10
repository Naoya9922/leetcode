# https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/

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
def max_level_sum(root)
  queue = [root]
  level_sum = {}
  level = 1
  (0..).each do
    new_queue = []
    sum = queue.map(&:val).sum
    level_sum[level] = sum
    queue.each do |e|
      new_queue << e.left if e.left
      new_queue << e.right if e.right
    end
    break if new_queue.empty?
    queue = new_queue
    level += 1
  end
  level_sum.max_by{|_, v| v}.first
end