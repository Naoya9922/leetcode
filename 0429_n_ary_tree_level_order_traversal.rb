
# https://leetcode.com/problems/n-ary-tree-level-order-traversal/

# Definition for a Node.
# class Node
#     attr_accessor :val, :children
#     def initialize(val)
#         @val = val
#         @children = []
#     end
# end

# @param {Node} root
# @return {List[List[int]]}
def level_order(root)
  return [] unless root
  queue = [root]
  result = []
  (0..).each do
    new_queue = []
    result << queue.map(&:val)
    queue.each do |e|
      new_queue += e.children
    end
    break if new_queue.compact.empty?
    queue = new_queue
  end
  result
end
