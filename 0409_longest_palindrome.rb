# https://leetcode.com/problems/longest-palindrome/

# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  chars_counts = s.chars.group_by(&:itself).transform_values(&:count).values
  evens_sum = chars_counts.select(&:even?).sum
  odds = chars_counts.select(&:odd?).map{|n| n - 1}
  odds_sum = odds.sum
  odds_sum += 1 if odds.any?
  evens_sum + odds_sum
end
