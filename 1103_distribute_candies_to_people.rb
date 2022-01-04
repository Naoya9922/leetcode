# https://leetcode.com/problems/distribute-candies-to-people/

# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
  result = Array.new(num_people, 0)
  total = 0
  (1..).each do |i|
    stop = false
    to_add = nil
    if total + i > candies
      to_add = candies - total
      stop = true
    else
      to_add = i
      total += i
    end
    result[(i-1) % num_people] += to_add
    break if stop
  end
  result
end