# Range
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d
# The for loop iterates over a collection, executing the block for each element.
# The for loop is a way to iterate over a collection, executing the block for each element.
for i in 0..9 do
  puts "i is #{i}"
end

# The for loop can also be used with ranges.
for i in (1..5) do
  puts "i is #{i}"
end