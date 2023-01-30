def validate?(username)
  regexp = /^[a-zA-Z](((?!.*_.*_)[a-zA-Z0-9_])*[a-zA-Z0-9])?$/
  username.size >= 4 && regexp.match?(username)
end

# Details:

#     ^ - start of string
#     (?!.*_.*_) - a negative lookahead which would reject any input having two (or more) underscores,
#                  which means that zero or one underscores would be acceptable.
#     [a-zA-Z0-9]+ - 1+ alphanumeric chars
#     (?:_[a-zA-Z0-9]+)* - 0+ sequences of:
#         _ - 1 underscore
#         [a-zA-Z0-9]+ - 1+ alphanumeric chars
#     _? - an optional _
#     $ - end of string
