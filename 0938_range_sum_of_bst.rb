# https://leetcode.com/problems/range-sum-of-bst/

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
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  queue = [root]
  result = []
  range = Range.new(low, high)
  result << root.val if range.cover?(root&.val)
  (0..).each do
    new_queue = []
    queue.each do |e|
      if e.left
        new_queue << e.left
        result << e.left.val if range.cover?(e.left.val)
      end
      if e.right
        new_queue << e.right
        result << e.right.val if range.cover?(e.right.val)
      end
    end
    break if new_queue.empty?
    queue = new_queue
  end
  result.sum
end