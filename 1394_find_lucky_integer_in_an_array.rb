# https://leetcode.com/problems/find-lucky-integer-in-an-array/

# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  hash = arr.group_by(&:itself).map{|k,v| [k, v.count]}.to_h
  hash.select{|k,v| k == v}.keys.max || -1
end