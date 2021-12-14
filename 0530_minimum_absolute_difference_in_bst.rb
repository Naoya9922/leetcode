# https://leetcode.com/problems/minimum-absolute-difference-in-bst/

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
def get_minimum_difference(root)
  queue = [root]
  result = [root.val]
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
  result = result.sort
  result = result.map.with_index do |n, i|
    next if i == 0
    n - result[i-1]
  end.compact.min
end