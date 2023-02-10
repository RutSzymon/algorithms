# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  numbers.each_with_object({}).with_index(1) do |(number, hash), index|
    return [hash[target - number], index] if hash[target - number]

    hash[number] = index
  end
end

puts two_sum([2, 7, 11, 15], 9)
puts two_sum([2, 3, 4], 6)
puts two_sum([-1, 0], -1)
