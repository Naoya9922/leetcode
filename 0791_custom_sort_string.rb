# https://leetcode.com/problems/custom-sort-string/

# @param {String} order
# @param {String} s
# @return {String}
def custom_sort_string(order, s)
  order = order.chars.map.with_index.to_h
  s.chars.sort_by{|c| order[c] || -1}.join
end