# adding 2 arrays returns a new array
# using the + operator or the concat method
a = [1, 2, 3]
b = [3, 4, 5]

puts a + b         #=> [1, 2, 3, 3, 4, 5]
puts a.concat(b)   #=> [1, 2, 3, 3, 4, 5]

# array subtraction returns a new array
# using the - operator or the subtract method
puts [1, 1, 1, 2, 2, 3, 4] - [1, 4]  #=> [2, 2, 3]
