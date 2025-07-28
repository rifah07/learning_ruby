# Non-destructive
arr = [1, 2, 3, 4, 5, 6]
puts "Actual array: #{arr}" #=> [1, 2, 3, 4, 5, 6]
puts "Using select method"
arr_1 = arr.select {|a| a > 3}       #=> [4, 5, 6]
puts "After select: #{arr_1}" #=> [4, 5, 6]
puts "Using reject method"  
arr_2 = arr.reject {|a| a < 3}       #=> [3, 4, 5, 6]
puts "After reject: #{arr_2}" #=> [3, 4, 5, 6]
puts "Using drop method"
arr_3 = arr.drop_while {|a| a < 4}   #=> [4, 5, 6]
puts "After drop: #{arr_3}" #=> [4, 5, 6]
puts "Actual array: #{arr}"                       #=> [1, 2, 3, 4, 5, 6]

# Destructive 
puts "Using delete_if method"
arr = [1, 2, 3, 4, 5, 6]
puts "Actual array: #{arr}" #=> [1, 2, 3, 4, 5, 6]
puts "After delete_if: #{arr.delete_if {|a| a < 4}}" #=> [4, 5, 6]
puts "Actual array after delete_if: #{arr}" #=> [4, 5, 6]
puts "Using keep_if method"
arr.keep_if {|a| a < 4}   #=> []
puts "Actual array after keep_if: #{arr}" #=> []   

# further work on array class