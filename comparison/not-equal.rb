puts "Check if two numbers are equal"
puts "Enter first number:"
num1= gets.chomp.to_i
puts "Enter second number:"
num2= gets.chomp.to_i

# "!=" is used to compare two values of same data type for not-equality

if num1 != num2
  puts "Numbers are not-equal"
else 
  puts "Numbers are equal"
end

if num1.to_s != num2.to_s
  puts "Numbers are not equal when converted to string #{num1} and #{num2}"
else 
  puts "Numbers are equal when converted to string #{num1} and #{num2}"
end

#  to use "!=" to compare, both values should be of same data type
# if one is string and other is integer, it will not work as expected"
if num1.to_s != num2
  puts "Numbers are not equal when #{num1} compared as string"
else 
  puts "Numbers are equal when first number #{num1} compared as strings"
end

# ! - the "not" operator. When you add this in front of a boolean expression it will change that boolean value to its opposite.

puts  !(num1 == num2)