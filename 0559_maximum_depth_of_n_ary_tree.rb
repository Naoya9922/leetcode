# https://leetcode.com/problems/maximum-depth-of-n-ary-tree/

# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {int}
def maxDepth(root)
  return 0 unless root
  queue = [root]
  (1..).each do |n|
    new_queue = []
    queue.each do |e|
      new_queue += e.children if e.children
    end
    return n if new_queue.empty?
    queue = new_queue
  end
end