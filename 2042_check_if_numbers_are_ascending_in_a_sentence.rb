# https://leetcode.com/problems/check-if-numbers-are-ascending-in-a-sentence/

# @param {String} s
# @return {Boolean}
def are_numbers_ascending(s)
  nums = s.scan(/\d+/).map(&:to_i)
  last = 0
  nums.each do |n|
    return false if last >= n
    last = n
  end
  true
end