# https://leetcode.com/problems/two-sum-iv-input-is-a-bst/

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
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
  result = [root.val]
  queue = [root]
  (0..).each do
    new_queue = []
    queue.each do |e|
      if e.left
        new_queue << e.left
        result << e.left.val
      end
      if e.right
        new_queue << e.right
        result << e.right.val
      end
    end
    break if new_queue.empty?
    queue = new_queue
  end
  result.combination(2).any?{|a, b| a + b == k}
end