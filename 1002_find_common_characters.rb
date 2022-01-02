# https://leetcode.com/problems/find-common-characters/

# @param {String[]} words
# @return {String[]}
def common_chars(words)
  words = words.map(&:chars)
  word = words.first
  result = []
  word.each do |c|
    contained = words[1..].all? do |w|
      if (i = w.index(c))
        w.delete_at(i)
      end
    end
    result << c if contained
  end
  result
end