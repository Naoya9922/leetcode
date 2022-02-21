# https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/

# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
  low = low - 1 if low.odd?
  high = high + 1 if high.odd?
  (high - low) / 2
end
