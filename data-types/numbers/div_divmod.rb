# x.div(y) performs integer (floor) division: it divides x by y and keeps only
# the whole-number quotient, discarding any fractional part

puts 7.div(3)   # => 2
puts 7 / 3      # => 2   (same, because both operands are integers)

puts 7.div(3.0) # => 2   (floor of 2.333…)
puts 7 / 3.0    # => 2.3333333333333335   (normal float division)

puts 7.div(-3)  # => -3   (because -2.333… floors to -3)
puts 7 / -3     # => -2   (normal float division rounds towards zero)

#
# How It Differs from /
# / → integer division (same as .div)
# div → integer division
# / → float or rational result
# div → floors the real result back to an integer

puts 'Examples of div and divmod in Ruby'

# Positive examples
puts 20.div(6)     # => 3
puts 20.divmod(6)  # => [3, 2]   # quotient and remainder pair

# Negative examples
puts 'With negative values div and divmod'
puts(-7.div(3))     # => -3
puts(-7.div(-3))    # => 2
puts(-7.divmod(3))  # => [-3, 2]   # quotient and remainder pair
puts(-7.divmod(-3)) # => [2, -1]   # quotient and remainder pair
