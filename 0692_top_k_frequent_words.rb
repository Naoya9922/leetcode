# https://leetcode.com/problems/top-k-frequent-words/

# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
  words.group_by(&:itself).map{|k,v| [k, v.count]}.sort_by{|k,v| [-v, k]}.to_h.keys.first(k)
end