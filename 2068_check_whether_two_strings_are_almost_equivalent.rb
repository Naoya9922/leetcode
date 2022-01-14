# https://leetcode.com/problems/check-whether-two-strings-are-almost-equivalent/

module CountHash
  refine Array do
    def to_count_hash
      self.group_by(&:itself).transform_values(&:count)
    end
  end
end

using CountHash

# @param {String} word1
# @param {String} word2
# @return {Boolean}
def check_almost_equivalent(word1, word2)
  hash1 = word1.chars.to_count_hash
  hash2 = word2.chars.to_count_hash
  diff = hash1.merge(hash2){|_, val1, val2| (val1 - val2).abs}
  diff.all?{|_, v| v <= 3}
end