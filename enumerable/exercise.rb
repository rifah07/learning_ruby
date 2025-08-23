# 1
# Use each_with_index to only print out every third letter.

('A'..'Z').each_with_index do |alphabet, idx|
  puts alphabet if idx % 3 == 2
end

#2
# Using map (and one other method), create an array that lists the numbers 0 to -100 in descending order.
# Without typing all the numbers manually, of course.
puts 100.times.map {|num| -num}
# or
puts (0..100).map {|num| -num}