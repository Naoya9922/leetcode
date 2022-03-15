# https://leetcode.com/problems/minimum-time-to-type-word-using-special-typewriter

def chars
  @chars ||= ('a'..'z').to_a
end

def get_distance(from, to)
  from_index = chars.find_index(from)
  to_index = chars.find_index(to)
  max = [from_index, to_index].max
  min = [from_index, to_index].min
  [max - min, chars.length, chars.length - max + min].min
end

# @param {String} word
# @return {Integer}
def min_time_to_type(word)
  count = 0
  if word.start_with?('a')
    count += 1
  else
    word = 'a' + word
  end
  word.chars.each_cons(2) do |w1, w2|
    count += get_distance(w1, w2) + 1
  end
  count
end
