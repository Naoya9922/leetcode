# https://leetcode.com/problems/maximum-difference-between-node-and-ancestor/

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
def max_ancestor_diff(root)
  queue = [root]
  result = [[[root.val]]]
  (0..).each do
    new_queue = []
    last = result.last
    tmp = []
    queue.each do |e|
      last_element = last.select{|a| a.last == e.val}.first
      if e.left
        new_queue << e.left
        tmp << last_element + [e.left.val]
      end
      if e.right
        new_queue << e.right
        tmp << last_element + [e.right.val]
      end
      result << tmp unless tmp.empty?
    end
    break if new_queue.empty?
    queue = new_queue
  end
  result.flatten(1).map{|ary| (ary.max - ary.min).abs}.max
end
