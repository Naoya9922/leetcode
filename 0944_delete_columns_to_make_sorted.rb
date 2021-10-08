# https://leetcode.com/problems/delete-columns-to-make-sorted/

# @param {String[]} strs
# @return {Integer}
def min_deletion_size(strs)
  strs.map(&:chars).transpose.select{|arr| arr != arr.sort}.count
end