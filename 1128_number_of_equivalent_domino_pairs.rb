# https://leetcode.com/problems/number-of-equivalent-domino-pairs/

# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
  ary = dominoes.map(&:sort).group_by(&:itself).map{|(x,y), c| [[x,y], c.count]}
  ary.select{|(x,y), c| c >= 2}.map{|(x,y), c| c}.map do |c|
    (1..c).to_a.combination(2).to_a.count
  end.sum
end