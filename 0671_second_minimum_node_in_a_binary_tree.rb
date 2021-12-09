# https://leetcode.com/problems/second-minimum-node-in-a-binary-tree/

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
def find_second_minimum_value(root)
  queue = [root]
  result = []
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
  result = result.uniq.sort
  result.length <= 1 ? -1 : result.first(2).last

end