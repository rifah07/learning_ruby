5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

# The upto method is used to iterate over a range of numbers.
# The upto method iterates from a starting number up to a specified end number,


5.upto(10) do |num|
  puts "Counting up: #{num}"
end
