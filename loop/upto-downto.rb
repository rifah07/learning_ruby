5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5
# The upto and downto methods are used to iterate over a range of numbers.
# The upto method iterates from a starting number up to a specified end number,
# while the downto method counts down from a starting number to a specified end number.
# These methods are particularly useful for generating sequences of numbers in a concise manner.

5.upto(10) do |num|
  puts "Counting up: #{num}"
end

10.downto(5) do |num|
  puts "Counting down: #{num}"
end
