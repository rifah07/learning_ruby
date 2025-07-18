# The && and || logical operators, as you'll recall, use short-circuit evaluation.
# These operators work with truthy and falsy values too, and they can also return truthy values instead of boolean values.
# When using && and ||, the return value is always the value of the operand evaluated last

str1 = nil
str2= 'string_2'

output = str1 || str2
puts output