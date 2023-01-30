# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1

  array = [[]] * num_rows
  sign = +1
  i = 0

  s.chars.each do |char|
    array[i] += [char]
    i += sign
    sign *= -1 if i.zero? || i == num_rows - 1
  end

  array.map(&:join).join
end

puts convert('PAYPALISHIRING', 3)
puts convert('PAYPALISHIRING', 4)
puts convert('A', 1)
puts convert('AB', 1)
