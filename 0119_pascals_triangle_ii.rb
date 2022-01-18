# https://leetcode.com/problems/pascals-triangle-ii/

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  queue = [1]
  (1..row_index).each do
    new_queue = []
    len = queue.length
    (0..len).each do |i|
      last_idx = (i - 1)
      new_queue[i] = queue[i].to_i + (last_idx.negative? ? 0 : queue[last_idx])
    end
    queue = new_queue
  end
  queue
end