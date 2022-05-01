# https://leetcode.com/problems/largest-number-after-digit-swaps-by-parity

def convert_to_hash(ary, &block)
  with_index = ary.select{|n, _| block.call(n)}
  nums = with_index.map(&:first).sort.reverse
  index = with_index.map(&:last)
  index.zip(nums).to_h
end

# @param {Integer} num
# @return {Integer}
def largest_integer(num)
  ary = num.to_s.chars.map(&:to_i).each.with_index(1).to_a
  odd_hash = convert_to_hash(ary){|n| n.odd?}
  even_hash = convert_to_hash(ary){|n| n.even?}
  hash = odd_hash.merge(even_hash)
  (1..ary.length).map{|i| hash[i]}.join.to_i
end
