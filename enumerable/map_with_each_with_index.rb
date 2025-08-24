arr = ['a', 'b', 'c', 'd', 'e']

# with map
arr1 = arr.each_with_index.map do |letter, index|
   "#{index + 1}: #{letter.capitalize}"
end

puts "Actual array: #{arr.join(", ")}"
puts "Mapped new array (with map): #{arr1.join("\n")}"


# Using the array (['cat', 'goat', 'dog', 'cow']), create a new array in which
# every second element is uppercased and backwards.
animals = ['cat', 'goat', 'dog', 'cow']

new_animals = animals.each_with_index.map do |animal , idx|
   if idx.odd?
      animal.upcase.reverse
   else 
      animal
   end
end

print "New array (with map): "
p new_animals