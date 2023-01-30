FIXNUM_MAX = 2**31 - 1

# @param {Integer} x
# @return {Integer}
def reverse(x)
  sign = x.negative? ? '-' : ''
  reversed = x.abs.to_s.reverse.to_i
  return 0 if reversed >= FIXNUM_MAX

  x.negative? ? -reversed : reversed
end

puts reverse(123)
puts reverse(-123)
puts reverse(120)
puts reverse(1534236469)
puts reverse(-2147483412)
