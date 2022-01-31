# https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/

# @param {String} s
# @return {Boolean}
def are_occurrences_equal(s)
  s.chars.group_by(&:itself).transform_values(&:count).values.uniq.count == 1
end
