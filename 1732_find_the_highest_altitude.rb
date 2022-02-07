# https://leetcode.com/problems/find-the-highest-altitude/

# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  max = 0
  gain.inject(max) do |acc, n|
    acc = acc + n
    max = [max, acc].max
    acc
  end
  max
end
