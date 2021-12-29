# https://leetcode.com/problems/insert-interval/

module Interval
  refine Range do
    def merge(other)
      dups = self.to_a & other.to_a
      return nil if dups.empty?
      first = [self.first, other.first].min
      last = [self.last, other.last].max
      self.class.new(first, last)
    end

    def to_interval
      [self.first, self.last]
    end
  end

  refine Array do
    def to_range
      (self.first..self.last)
    end
  end
end

using Interval

# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  return [new_interval] if intervals.empty?
  result = []
  merged_once = false
  intervals.each do |interval|
    last = result.last
    next if last && last.to_range.cover?(interval.to_range)
    merged = interval.to_range.merge(new_interval.to_range)
    if merged
      result << merged.to_interval
      merged_once = true
    else
      result << interval
    end
  end
  result << new_interval unless merged_once
  result = result.sort
  result.inject([]) do |acc, e|
    if (merged = e.to_range.merge(acc.last&.to_range))
      acc.pop
      acc << merged.to_interval
    else
      acc << e
    end
    acc
  end
end


