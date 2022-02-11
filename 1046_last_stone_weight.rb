# https://leetcode.com/problems/last-stone-weight/

# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  while(stones.length >= 2) do
    stones = stones.sort
    x, y = stones.pop(2)
    next if x == y
    stones.push(y - x)
  end
  stones.first || 0
end
