# https://leetcode.com/problems/shortest-completing-word/

# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
  ary = license_plate.scan(/[A-Za-z]/).map(&:downcase)
  words.select do |word|
    word = word.chars
    result = true
    ary.each do |c|
      index = word.index(c)
      if !index
        result = false
        next
      end
      word.delete_at(index)
    end
    result
  end.min_by{|word| word.length}
end