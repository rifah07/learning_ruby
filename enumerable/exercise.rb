# Use each_with_index to only print out every third letter.

('A'...'Z').each_with_index do |alphabet, idx|
  puts alphabet if idx % 3 == 2
end