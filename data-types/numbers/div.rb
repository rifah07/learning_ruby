# x.div(y) performs integer (floor) division: it divides x by y and keeps only 
# the whole-number quotient, discarding any fractional part

puts 7.div(3)   # => 2
puts 7 / 3      # => 2   (same, because both operands are integers)

puts 7.div(3.0) # => 2   (floor of 2.333…)
puts 7 / 3.0    # => 2.3333333333333335   (normal float division)
