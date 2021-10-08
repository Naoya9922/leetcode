# https://leetcode.com/problems/group-anagrams/

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  sorted = strs.map{|str| str.chars.sort.join}.uniq
  strs.group_by{|str| sorted[sorted.index(str.chars.sort.join)]}.values
end