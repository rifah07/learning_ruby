lts = %w{ a b c d e f}

puts lts.inspect
puts "Array has #{lts.length} elements"
puts "The first element is #{lts.first}"
puts "The last element is #{lts.last}"

puts lts.eql? lts.dup
# The eql? method figures out if two arrays are equal.
# In our case the line returns true. The dup method creates a shallow copy of an object.
# It is inherited from the Object parent.

puts lts.eql? lts.dup.delete_at(0)
# The delete_at method deletes the first element of the array. This time the two arrays do not equal.

puts "Use clear method:"
puts lts.inspect
lts.clear
puts "After clear:"
puts lts.inspect
# The clear method removes all elements from the array.
# After the clear method, the array is empty.
puts lts.inspect
puts lts.empty?