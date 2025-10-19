lts = %w[a b c d e f]

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

puts 'Use clear method:'
puts lts.inspect
lts.clear
puts 'After clear:'
puts lts.inspect
# The clear method removes all elements from the array.
# After the clear method, the array is empty.
puts lts.empty?


# another part

chars = %w[a b c d e]

reversed_chars = chars.reverse
puts reversed_chars.inspect
puts chars.inspect

reversed_chars = chars.reverse!
puts reversed_chars.inspect
puts chars.inspect

# Ruby has, among others, two similar methods, the reverse method and reverse! method.
# These two methods change the order of the elements, they reverse it.
# The difference is that the reverse method returns a reversed array and
# leaves the original array intact, while the reverse! method both modifies the contents of the original array.

# another example

numbers = [1, 2, 2, 2, 3, 4, 5, 8, 11]

puts 'Numbers array:'
puts numbers.inspect
puts numbers.length
puts numbers.first
puts numbers.last
puts numbers.index 2
puts numbers.index 11
# The index method returns the index of the array element.
# It returns the index of the first element from the left.
# The first line returns 1, which is the index of the first 2 in the array.
# There is only one 11 in the array and its index is 8.

puts numbers.rindex 2
# The rindex returns the index of the first element from the right. In our case, the rightmost 2 has index 3.
puts numbers.rindex 11
# The rindex method returns the index of the first element from the right.
# In our case, the rightmost 11 has index 8.

puts numbers.include? 3
puts numbers.include? 10

puts numbers.join '-'
# The join method returns a string created from the array elements, separated by a provided separator.
puts numbers.join ' '

puts numbers.uniq!.inspect

# The uniq! method removes duplicate elements from the array.
# We have three times number 2 in the array. After the method call, there will be only one 2 left.

# reference: https://zetcode.com/lang/rubytutorial/arrays/
