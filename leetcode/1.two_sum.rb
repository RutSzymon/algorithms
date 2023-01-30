def two_sum(nums, target)
  nums.each_with_object({}).with_index do |(number, hash), index|
    return [hash[target - number], index] if hash[target - number]

    hash[number] = index
  end
end
