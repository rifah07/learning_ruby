=begin 
The #reduce method (also called #inject) is a way to accumulate a value across the elements of an array or hash.
The general idea is that it takes an array or hash and reduces it down to a single object.
=end

nums = [3, 5, 7, 11]

p nums.reduce {|sum, n| sum + n} #26
=begin
The first block variable in the #reduce enumerable (sum in this example) is known as the accumulator.
The result of each iteration is stored in the accumulator and then passed to the next iteration.
The accumulator is also the value that the #reduce method returns at the end of its work. By default,
the initial value of the accumulator is the first element in the collection, so for each step of the iteration
=end

# We can also set a different initial value for the accumulator by directly passing in a value to the #reduce method.
nums2 = [2, 4, 6, 8]

p nums2.reduce(100) {|acc, n| acc + n} #120