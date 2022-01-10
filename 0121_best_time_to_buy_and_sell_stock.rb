# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  (0..).each do
    break if prices.empty?
    min = prices.min
    idx = prices.index(min)
    max = prices[(idx+1)..].max
    profit = [profit, max - min].max if max
    prices = prices[...idx]
  end
  profit
end