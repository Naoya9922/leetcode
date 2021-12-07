# https://leetcode.com/problems/relative-ranks/

# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  hash = score.sort.reverse.each_with_index.to_h
  rank = {0 => "Gold Medal", 1 => "Silver Medal", 2 => "Bronze Medal"}
  hash = hash.transform_values{|v| rank[v] || (v + 1).to_s}
  score.map{|s| hash[s]}
end