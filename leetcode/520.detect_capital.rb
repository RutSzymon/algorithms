def detect_capital_use(word)
  %i[capitalize downcase upcase].any? { |method| word == word.public_send(method) }
end

puts detect_capital_use('USA')
