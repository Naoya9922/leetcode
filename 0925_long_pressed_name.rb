# https://leetcode.com/problems/long-pressed-name/

# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
  compact_name = get_compact_ary(name.split(''))
  compact_typed = get_compact_ary(typed.split(''))
  return false if compact_name.length != compact_typed.length
  compact_name.zip(compact_typed).all? do |arr1, arr2|
      arr1[0] == arr2[0] && arr1[1] <= arr2[1]
  end
end

def get_compact_ary(ary)
  result = []
  index = 0
  while(true)
    char = ary[index]
    break if char.nil?
    same_char_count = 1
    while(char == ary[index + 1])
      same_char_count+=1
      index +=1
    end
    result << [char, same_char_count]
    index += 1
  end
  result
end
