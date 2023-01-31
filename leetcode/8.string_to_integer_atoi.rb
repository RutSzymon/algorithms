# frozen_string_literal: true

FIXNUM_MAX = 2**31 - 1
FIXNUM_MIN = -2**31

# @param {String} s
# @return {Integer}
def my_atoi(s)
  stripped = s.strip
  result = 0
  sign = 1
  sign_codes = [43, 45]
  number_codes = (48..57).to_a

  stripped.chars.each.with_index do |char, index|
    break unless (sign_codes + number_codes).include?(char.ord)

    if sign_codes.include?(char.ord)
      break if index != 0

      sign = -1 if char == '-'
    else
      result = result * 10 + char.ord - '0'.ord
    end
  end

  result *= (sign || 1)
  result = FIXNUM_MAX if result > FIXNUM_MAX
  result = FIXNUM_MIN if result < FIXNUM_MIN
  result
end

def my_atoi(s)
  s.to_i.clamp(FIXNUM_MIN, FIXNUM_MAX)
end

puts my_atoi('42')
puts my_atoi('   -42')
puts my_atoi('4193 with words')
puts my_atoi('-91283472332')
puts my_atoi('+-12')
puts my_atoi('00000-42a1234')
