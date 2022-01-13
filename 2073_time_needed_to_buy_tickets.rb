# https://leetcode.com/problems/time-needed-to-buy-tickets/

# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
  count = 0
  (0..).each do |i|
    idx = i % tickets.length
    next if tickets[idx] == 0
    count += 1
    tickets[idx] -= 1
    return count if tickets[k] == 0
  end
end