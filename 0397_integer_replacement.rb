# https://leetcode.com/problems/integer-replacement/

# @param {Integer} n
# @return {Integer}
def integer_replacement(n)
  return 0 if n == 1
  count = 0
  queue = [n]
  (0..).each do
    new_queue = []
    queue.each do |e|
      if e.odd?
        new_queue << e - 1
        new_queue << e + 1
      else
        new_queue << e / 2
      end
    end
    count += 1
    break if new_queue.include?(1)
    queue = new_queue
  end
  count
end