# https://leetcode.com/problems/minimum-index-sum-of-two-lists/

# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}
def find_restaurant(list1, list2)
  list1 = list1.each_with_index.to_a
  list2 = list2.each_with_index.to_a
  result = list1.inject([]) do |acc, r1|
    next acc unless (r2 = list2.find{|e, _| r1[0] == e})
    acc << [r1[0], r1[1] + r2[1]]
    acc
  end
  min = result.map(&:last).min
  result.select{|_n, rank| rank == min}.map(&:first)
end
