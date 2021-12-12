# https://leetcode.com/problems/kth-smallest-element-in-a-bst/

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
# @return {Integer}
def kth_smallest(root, k)
  result = []
  result << root.val if root
  queue = [root]
  (0..).each do
    new_queue = []
    queue.each do |e|
      if e.left
        new_queue << e.left
        result << e.left.val
      end
      if e.right
        new_queue << e.right if e.right
        result << e.right.val
      end
    end
    break if new_queue.empty?
    queue = new_queue
  end
  result.sort.first(k).last
end