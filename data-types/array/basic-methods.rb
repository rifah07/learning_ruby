puts "Checking basic array methods in Ruby"
puts "Check the output for each method below:"

puts "Check if the array is empty:"
puts [].empty?               #=> true
puts [[]].empty?             #=> false
puts [1, 2].empty?           #=> false

puts "Check the length of the array:"
puts [1, 2, 3].length        #=> 3

puts "Reverse the array:"
puts [1, 2, 3].reverse       #=> [3, 2, 1]

puts "Check if the array includes a value:"
puts [1, 2, 3].include?(3)   #=> true
puts [1, 2, 3].include?("3") #=> false

puts "Join the array elements into a string:"
puts [1, 2, 3].join          #=> "123"
puts [1, 2, 3].join("-")     #=> "1-2-3"

puts "Use array in a variable:"
arr = [1,2,3,4,5,6]
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

puts "Access elements with slice:"
puts arr.slice(0)               #=> 1

puts "Use take and drop methods:"
puts arr.take(3)               #=> [1, 2, 3]
puts arr.drop(3)               #=> [4, 5, 6]

puts "Use count method:"
puts arr.count               #=> 6
puts arr.count(2)            #=> 1

puts "Insert elements into the array:"
puts arr.insert(3, 'apple') #=> [1, 2, 3, "apple", 4, 5, 6]
arr.insert(3, 'orange', 'pear', 'grapefruit')
puts arr                  #=> [1, 2, 3, "orange", "pear", "grapefruit", 4, 5, 6]

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