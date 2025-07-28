arr = [1, 2, 3, 4, 5]
arr.each {|a| print a -= 10, " "} # this does not change the arr- array
puts arr

# another iterator is reverse_each which will iterate over the elements in the array in reverse order.
words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each {|word| str += "#{word} "}
p str #=> "sixth fifth fourth third second first "#
 
# The map method can be used to create a new array based on the original array,
# but with the values modified by the supplied block
puts "Using map and map! methods"
arr_1 = [1, 2, 3, 4, 5]
puts "Array before map: #{arr_1}" #=> [1, 2, 3, 4, 5]
puts "Using map method"
puts arr_1.map {|a| 2*a}     #=> [2, 4, 6, 8, 10]
puts arr_1.map! {|a| a**2}   #=> [1, 4, 9, 16, 25]
puts "Array after map!: #{arr_1}" #=> [1, 4, 9, 16, 25]