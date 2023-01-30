# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  intervals.sort_by { _1[0] }.each_with_object([]) do |interval, result|
    if result[-1] && result[-1][1] >= interval[0]
      result[-1][1] = [result[-1][1], interval[1]].max
    else
      result << interval
    end
  end
end
