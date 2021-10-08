# https://leetcode.com/problems/check-array-formation-through-concatenation/

# @param {Integer[]} arr
# @param {Integer[][]} pieces
# @return {Boolean}
def can_form_array(arr, pieces)
  arr_ordered = arr.map.with_index.to_a.to_h
  pieces_ordered = pieces.sort_by{|p| arr_ordered[p.first] || -1}
  arr == pieces_ordered.flatten
end