# https://leetcode.com/problems/distribute-candies/

# @param {Integer[]} candy_type
# @return {Integer}
def distribute_candies(candy_type)
  count = candy_type.count / 2
  candy_type.uniq.take(count).count
end