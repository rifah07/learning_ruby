puts 3 || 'foo'   # last evaluated operand is 3

puts nil || 'foo'  # last evaluated operand is foo

puts nil && 'foo'  # last evaluated operand is nil

puts 3 && 'foo'    # last evaluated operand is 'foo'

# The && and || logical operators, as you'll recall, use short-circuit evaluation.
# These operators work with truthy and falsy values too, and they can also return truthy values instead of boolean values.
# When using && and ||, the return value is always the value of the operand evaluated last

str1 = nil
str2=  'string_2'

output = str1 || str2
puts output

#  using a string value as though it is a boolean isn't the clearest way to write your code.
# It may even look like a mistake to another programmer who is trying to track down a bug. In some strange cases,
# it may even be a mistake.

# You can address this easily enough by using an if statement or a ternary expression:

is_ok = (str1 || str2) ? true : false

puts is_ok