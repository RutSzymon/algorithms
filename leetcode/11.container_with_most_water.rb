# @param {Integer[]} heights
# @return {Integer}
def max_area(heights)
  max = 0
  left = 0
  right = heights.length - 1

  while left < right
    area = (right - left) * [heights[left], heights[right]].min
    max = [area, max].max
    heights[left] < heights[right] ? left += 1 : right -= 1
  end

  max
end

puts max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
