puts "Enter a number"

input= gets.chomp.to_i

if input == 1
  puts "Input is One"
elsif input == 2
  puts "Input is Two"
else 
  puts "Input is not 1 or 2"
end

# Must use "then" keyword when using 1-line syntax
puts "Input is One" if input == 1
puts "Input is Two" if input == 2
puts "Input is not 1 or 2" if input != 1 && input != 2