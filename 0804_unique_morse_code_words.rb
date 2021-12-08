# https://leetcode.com/problems/unique-morse-code-words/

# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
  morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
  morse = morse.map.with_index.to_h.invert
  alpha = ("a".."z").map.with_index.to_h
  words = words.map do |word|
    word.chars.map{|w| morse[alpha[w]]}.join
  end
  words.uniq.count
end