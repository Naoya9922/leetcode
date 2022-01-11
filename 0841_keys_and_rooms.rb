# https://leetcode.com/problems/keys-and-rooms/

# @param {Integer[][]} rooms
# @return {Boolean}
def can_visit_all_rooms(rooms)
  visited = [0]
  queue = [rooms.first]
  (0..).each do
    new_queue = []
    queue.each do |e|
      e.each do |room_num|
        next if visited.include?(room_num)
        visited << room_num
        new_queue << rooms[room_num]
      end
    end
    break if new_queue.empty?
    queue = new_queue
  end
  visited.length == rooms.length
end