puts "Check if two numbers are equal"
puts "Enter first number:"
num1= gets.chomp.to_i
puts "Enter second number:"
num2= gets.chomp.to_i

# "==" is used to compare two values of same data type for equality

if num1 == num2
  puts "Numbers are equal"
else 
  puts "Numbers are not equal"
end