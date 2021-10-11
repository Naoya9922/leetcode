# https://leetcode.com/problems/height-checker/

# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  org = heights.map.with_index{|h, idx| [idx, h]}.to_h
  sorted = heights.sort.map.with_index{|h, idx| [idx, h]}.to_h
  org.select{|idx, h| sorted[idx] != h}.count
end