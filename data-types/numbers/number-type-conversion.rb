num1 = 15
num2 = 16
num3 = 15.56
num4 = 5
num5 = 5.14

# Convert by function

# to_f is used to convert integer to float
# to_i is used to convert float to integer
num1_float = num1.to_f
num2_float = num2.to_f
num3_integer = num3.to_i
num4_float = num4.to_f
num5_integer = num5.to_i

puts "The integer #{num1} , #{num2}, #{num4} converted to float is: #{num1_float}, #{num2_float}, #{num4_float}"
puts "The float #{num3}, #{num5} converted to integer is: #{num3_integer}, #{num5_integer}"
puts ''


# Type conversion in Arithmetic operations

division1 = num1 / num4
division3 = num3 / num4
division4 = num3 / num5

puts "The division of 2 integers is always an integer: #{division1}"
puts "The division of a float and an integer is a float: #{division3}"
puts "The division of 2 floats is always a float: #{division4}"
puts ''

division2 = num2 / num4
num6 = 16.0
division5 = num6 / num4

puts "The division of 2 integers is always showed an integer in Ruby, it does not show the float part even if that exists: #{division2}"
puts "To show float part of integer division you can make 1 to float: #{division5}"
puts "You can convert the integer result to float, but that does not show correct float as the operation held between 2 integers so it did not calculate the float part: #{division2.to_f}"

puts "Similarly (num2/num4).to_f = #{(num2 / num4).to_f}"
