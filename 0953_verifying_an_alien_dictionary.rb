# https://leetcode.com/problems/verifying-an-alien-dictionary/

# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  order_h = order.chars.each_with_index.to_h
  ordered = words.sort_by{|word| word.chars.map{|c| order_h[c]}}
  words == ordered
end
