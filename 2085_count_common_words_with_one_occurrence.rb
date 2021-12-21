# https://leetcode.com/problems/count-common-words-with-one-occurrence/

def convert_to_hash(ary)
  ary.group_by(&:itself).transform_values(&:count).select{|_, v| v == 1}.to_h
end

# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
  hash1 = convert_to_hash(words1)
  hash2 = convert_to_hash(words2)
  (hash1.keys & hash2.keys).count
end