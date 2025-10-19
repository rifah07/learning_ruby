# Write a program that takes a number from the user between 0 and 100 and reports back
# whether the number is between 0 and 50, 51 and 100, or above 100.

puts 'Enter a number between 1 to 100'
number = gets.chomp.to_i

if (number >= 0) && (number <= 50)
  puts 'The number is between 0 and 50'
elsif (number > 50) && (number <= 100)
  puts 'The number is between 51 and 100'
else
  puts 'The number is grater than 100'
end
