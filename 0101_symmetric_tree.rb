# https://leetcode.com/problems/symmetric-tree/

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
def is_symmetric(root)
  queue = [root]
  (0..).each do
    new_queue = []
    result = []
    queue.each do |e|
      new_queue << e.left if e.left
      new_queue << e.right if e.right
      result << e.left&.val
      result << e.right&.val
    end
    return false if result.reverse != result
    break if new_queue.empty?
    queue = new_queue
  end
  true
end