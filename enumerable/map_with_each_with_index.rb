arr = ['a', 'b', 'c', 'd', 'e']

# with map
arr1 = arr.each_with_index.map do |letter, index|
   "#{index + 1}: #{letter.capitalize}"
end

puts "Actual array: #{arr.join(", ")}"
puts "Mapped new array (with map): #{arr1.join("\n")}"