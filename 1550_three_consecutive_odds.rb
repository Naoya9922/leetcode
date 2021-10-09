# https://leetcode.com/problems/three-consecutive-odds/

# @param {Integer[]} arr
# @return {Boolean}
def three_consecutive_odds(arr)
  count = 0
  arr.each do |n|
    n.odd? ? count += 1 : count = 0
    return true if count == 3
  end
  false
end