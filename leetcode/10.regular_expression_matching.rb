# @param {String} s
# @param {String} p
# @return {Boolean}
def is_match(s, p, initial = true)
  p = optimize_pattern(p) if initial
  return s.empty? if p.empty?

  first = !s.empty? && [s[0], '.'].include?(p[0])
  if p.length >= 2 && p[1] == '*'
    is_match(s, p[2..], false) || (first && is_match(s[1..], p, false))
  else
    first && is_match(s[1..], p[1..], false)
  end
end

def optimize_pattern(p)
  start = p[0..1]
  optimized = p.chars.uniq.join
  optimized == start && start[0] != '.' && start[1] == '*' ? optimized : p
end

puts is_match('aa', 'a')
puts is_match('aa', 'a*')
puts is_match('ab', '.*')
puts is_match('ab', '.*c')
puts is_match('aaa', 'a.a') == true
