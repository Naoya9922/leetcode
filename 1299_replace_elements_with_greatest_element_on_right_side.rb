# https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  arr.map.with_index do |n,idx|
    arr[(idx+1)..(arr.length-1)].max || -1
  end
end