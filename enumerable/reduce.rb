=begin 
The #reduce method (also called #inject) is a way to accumulate a value across the elements of an array or hash.
The general idea is that it takes an array or hash and reduces it down to a single object.
=end

nums = [3, 5, 7, 11]

p nums.reduce {|sum, n| sum + n} #26