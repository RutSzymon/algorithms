# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  nums.sort!
  triplets = []

  (0..nums.length - 3).each do |i|
    left = i + 1
    right = nums.length - 1
    target = -nums[i]

    next if i.positive? && nums[i] == nums[i - 1]

    while left < right
      sum = nums[left] + nums[right]
      if sum < target
        left += 1
      elsif sum > target
        right -= 1
      elsif sum == target
        triplets << [nums[i], nums[left], nums[right]]
        left += 1
        right -= 1

        left += 1 while left < right && nums[left] == nums[left - 1]
      end
    end
  end

  triplets.uniq
end

puts three_sum([-1, 0, 1, 2, -1, -4]) == [[-1, -1, 2], [-1, 0, 1]]
puts three_sum([0, 1, 1]) == []
puts three_sum([0, 0, 0]) == [[0, 0, 0]]
puts three_sum([0, 0, 0, 0]) == [[0, 0, 0]]
puts three_sum([-1, 0, 1, 0]) == [[-1, 0, 1]]
puts three_sum([3, 0, -2, -1, 1, 2]) == [[-2, -1, 3], [-2, 0, 2], [-1, 0, 1]]
