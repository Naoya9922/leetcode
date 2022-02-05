# https://leetcode.com/problems/even-odd-tree/

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
def is_even_odd_tree(root)
  queue = [root]
  (0..).each do |level|
    new_queue = []
    vals = queue.map(&:val)
    if level.even?
      return false unless vals.all?(&:odd?) && vals.uniq.sort == vals
    else
      return false unless vals.all?(&:even?) && vals.uniq.sort.reverse == vals
    end
    queue.each do |e|
      new_queue << e.left if e.left
      new_queue << e.right if e.right
    end
    break if new_queue.empty?
    queue = new_queue
  end
  return true
end
