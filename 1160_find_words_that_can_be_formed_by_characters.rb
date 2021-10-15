# https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/

def to_chars_hash(str)
  str.chars.group_by(&:itself).map{|k,v| [k, v.count]}.to_h
end

# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  chars_h = to_chars_hash(chars)
  selected = words.select do |word|
    word_h = to_chars_hash(word)
    next if (word_h.keys - chars_h.keys).any?
    chars_h.all?{|k,v| word_h[k].to_i <= v}
  end
  selected.join.chars.count
end