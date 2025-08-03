puts "Checking basic array methods in Ruby"
puts "Check the output for each method below:"

puts "Check if the array is empty:"
puts [].empty?               #=> true
puts [[]].empty?             #=> false
puts [1, 2].empty?           #=> false

puts "Check the length of the array:"
puts [1, 2, 3].length        #=> 3
puts [1, 2, 3].size          #=> 3

puts "Reverse the array:"
puts [1, 2, 3].reverse       #=> [3, 2, 1]

puts "Check if the array includes a value:"
puts [1, 2, 3].include?(3)   #=> true
puts [1, 2, 3].include?("3") #=> false

puts "Join the array elements into a string:"
puts [1, 2, 3].join          #=> "123"
puts [1, 2, 3].join("-")     #=> "1-2-3"

puts "Use array in a variable:"
arr = [1,2,3,4,5,6,7,8,9,10]
puts "The array is: #{arr}"
puts "Access elements in the array:"
puts arr[0]                 #=> 1
puts arr.at(0)               #=> 1
puts arr.at(1)               #=> 2

puts arr.first               #=> 1
puts arr.last               #=> 6

puts "Access elements with fetch:"
puts arr.fetch(0)               #=> 1
#puts arr.fetch(10)               #=> IndexError
puts arr.fetch(10, "oops")  #=> "oops"
# This form of the fetch method returns the element with the given index.
# If the index lies outside the array elements, the method returns the default value, 'oops' in our case.
# Without the second parameter, the fetch method throws an IndexError, as shown in 2nd fetch line

puts "Access elements with slice:"
puts arr.slice(0)               #=> 1

# The forms of the slice method return one array element.
# The code line returns the first element.
puts arr.slice(0, 3).inspect #=> [1, 2, 3]
# The first parameter is the start index and the second parameter is the length.
# In this code line, we return 3 elements starting from index 0.
puts "Access elements with slice using range:"
puts arr.slice(2..6).inspect
puts arr.slice(2...6).inspect

# We can use range operator with the slice method.
# In the first line we read elements from index 2 to 6, in the second line elements from 2 to 5.


arr = [1,2,3,4,5,6,7,8,9,10]

puts "Use take method:"
puts "Without inspect: "
puts arr.take(3)               #=> [1, 2, 3]; Here we return the first three elements of the array.
print "With inspect: "
puts arr.take(3).inspect       #=> [1, 2, 3]
arr2= arr.take_while { |x| x < 5 }
print "Take while: "
# Here we create a new array from the original array.
# In the new array we have all characters that come before the value 5.
puts arr2.inspect               #=> [1, 2, 3, 4]

puts "Use drop method:"
puts arr.drop(3)               #=> [4, 5, 6]

puts "Use count method:"
puts arr.count               #=> 6
puts arr.count(2)            #=> 1

puts "Insert elements into the array:"
puts arr.insert(3, 'apple') #=> [1, 2, 3, "apple", 4, 5, 6, 7, 8, 9, 10]
arr.insert(3, 'orange', 'pear', 'grapefruit')
puts arr                  #=> [1, 2, 3, "orange", "pear", "grapefruit", 4, 5, 6, 7, 8, 9, 10]

puts "Delete elements from the array:"
puts arr.delete_at(2)     #=> "3"
puts arr

# A useful method if you need to remove nil values from an array is compact
arr_with_nil = [1, nil, 2, nil, 3]
puts "Array with nil values: #{arr_with_nil}"
puts "After compacting the array:"
puts arr_with_nil.compact #=> [1, 2, 3]
puts arr_with_nil.compact! #=> [1, 2, 3]
puts "After compacting in-place:"
puts arr_with_nil #=> [1, 2, 3]

# use uniq method to remove duplicates
arr_with_duplicates = [1, 2, 2, 3, 4, 4, 5]
puts "Array with duplicates: #{arr_with_duplicates}"
puts "After removing duplicates:"
puts arr_with_duplicates.uniq #=> [1, 2, 3, 4, 5]