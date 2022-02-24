# https://leetcode.com/problems/minimum-cost-of-buying-candies-with-discount/

# @param {Integer[]} cost
# @return {Integer}
def minimum_cost(cost)
  cost.sort.reverse.each_slice(3).inject(0) do |sum, (a,b,_)|
    sum += (a.to_i + b.to_i)
  end
end
