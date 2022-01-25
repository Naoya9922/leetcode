# https://leetcode.com/problems/1-bit-and-2-bit-characters/

# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
  idx = 0
  max = bits.length - 1
  while(true) do
    break if idx > max
    return true if idx == max
    if bits[idx] == 1
      idx += 2
      next
    end
    idx += 1
  end
  false
end