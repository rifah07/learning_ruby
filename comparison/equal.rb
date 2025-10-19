puts 'Check if two numbers are equal'
puts 'Enter first number:'
num1 = gets.chomp.to_i
puts 'Enter second number:'
num2 = gets.chomp.to_i

# "==" is used to compare two values of same data type for equality

if num1 == num2
  puts 'Numbers are equal'
else
  puts 'Numbers are not equal'
end

if num1.to_s == num2.to_s
  puts "Numbers are equal when converted to string #{num1} and #{num2}"
else
  puts "Numbers are not equal when converted to string #{num1} and #{num2}"
end

#  to use "==" to compare, both values should be of same data type
# if one is string and other is integer, it will not work as expected"
if num1.to_s == num2
  puts "Numbers are equal when #{num1} compared as string"
else
  puts "Numbers are not equal when first number #{num1} compared as strings"
end

# "===" is not same in Ruby as Javascript
if num1 === num2.to_s
  puts "Numbers are equal when #{num2} compared as string"
else
  puts "Numbers are not equal when second number #{num2} compared as strings"
end
# see like the previous example it still works the same
