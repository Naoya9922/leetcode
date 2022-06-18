# https://leetcode.com/problems/distance-between-bus-stops/

# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
  s, d = [start, destination].minmax
  right = distance[s...d].sum
  left = distance[...s].sum + distance[d..].sum
  [right, left].min
end
