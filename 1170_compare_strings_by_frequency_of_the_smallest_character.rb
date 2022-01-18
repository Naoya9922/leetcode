# https://leetcode.com/problems/compare-strings-by-frequency-of-the-smallest-character/

module CharCount
  refine String do
    def to_char_count
      self.chars.group_by(&:itself).transform_values(&:count).min_by{|k, v| alpha[k]}.last
    end

    def alpha
      ('a'..'z').each_with_index.to_h
    end
  end
end

using CharCount

# @param {String[]} queries
# @param {String[]} words
# @return {Integer[]}
def num_smaller_by_frequency(queries, words)
  queries = queries.map(&:to_char_count)
  words = words.map(&:to_char_count)
  queries.map{|q| words.select{|w| q < w}.count}
end