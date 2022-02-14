# https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/

# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  prices.map.with_index do |p, i|
    discount = prices[i+1..].find{|n| n <= p}.to_i
    p - discount
  end
end
