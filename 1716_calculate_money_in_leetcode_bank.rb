# https://leetcode.com/problems/calculate-money-in-leetcode-bank/

# @param {Integer} n
# @return {Integer}
def total_money(n)
  a_week = 7
  weeks = (n / a_week) + 1
  days = n % a_week
  sum = 0
  (1..weeks).each do |w|
    (1..a_week).each do |d|
      break if w == weeks && d > days
      sum += (d + w - 1)
    end
  end
  sum
end