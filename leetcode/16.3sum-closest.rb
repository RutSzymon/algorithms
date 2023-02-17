# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def three_sum_closest(nums, target)
  nums.sort!
  result = Float::INFINITY

  (0..nums.size - 3).each do |i|
    left = i + 1
    right = nums.size - 1

    next if i.positive? && nums[i] == nums[i - 1]

    while left < right
      sum = nums[i] + nums[left] + nums[right]
      return sum if sum == target

      sum < target ? left += 1 : right -= 1
      result = sum if (target - sum).abs < (target - result).abs
    end
  end

  result
end

puts three_sum_closest([-4, -1, 1, 2], 1) == 2
puts three_sum_closest([0, 0, 0], 1) == 0
puts three_sum_closest([0, 1, 1, 1], -100) == 2
