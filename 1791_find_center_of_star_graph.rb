# https://leetcode.com/problems/find-center-of-star-graph/

# @param {Integer[][]} edges
# @return {Integer}
def find_center(edges)
  edges.inject(:&).first
end