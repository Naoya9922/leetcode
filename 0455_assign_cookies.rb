# https://leetcode.com/problems/assign-cookies/

# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g = g.sort
  s = s.sort
  count = 0
  g.each do |i|
    idx = s.find_index{|j| j >= i}
    next if idx.nil?
    s.delete_at(idx)
    count += 1
  end
  count
end