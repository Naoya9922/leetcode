# https://leetcode.com/problems/can-place-flowers/

# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  max = flowerbed.count - 1
  flowerbed.each_with_index do |f, i|
    next if f == 1
    prev_val = flowerbed[i-1]
    next_val = flowerbed[i+1]
    if (i==0 || prev_val==0) && (i==max || next_val==0)
      n -= 1
      flowerbed[i] = 1
    end
  end
  n <= 0
end