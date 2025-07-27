arr = [1, 2, 3, 4, 5]
arr.each {|a| print a -= 10, " "} # this does not change the arr- array
puts arr

# another iterator is reverse_each which will iterate over the elements in the array in reverse order.
words = %w[first second third fourth fifth sixth]
str = ""
words.reverse_each {|word| str += "#{word} "}
p str #=> "sixth fifth fourth third second first "