# https://leetcode.com/problems/find-smallest-letter-greater-than-target/

# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
  letters = (letters << target).sort.uniq
  idx = letters.index(target)
  idx == (letters.length - 1) ? letters[0] : letters[idx + 1]
end