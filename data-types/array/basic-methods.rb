puts [].empty?               #=> true
puts [[]].empty?             #=> false
puts [1, 2].empty?           #=> false

puts [1, 2, 3].length        #=> 3

puts [1, 2, 3].reverse       #=> [3, 2, 1]

puts [1, 2, 3].include?(3)   #=> true
puts [1, 2, 3].include?("3") #=> false

puts [1, 2, 3].join          #=> "123"
puts [1, 2, 3].join("-")     #=> "1-2-3"

arr = [1,2,3,4,5,6]
puts arr.at(0)               #=> 1
puts arr.at(1)               #=> 2

puts arr.first               #=> 1
puts arr.last

puts arr.fetch(0)               #=> 1
#puts arr.fetch(10)               #=> IndexError
puts arr.fetch(10, "oops")  #=> "oops"

puts arr.take(3)               #=> [1, 2, 3]
puts arr.drop(3)               #=> [4, 5, 6]

puts arr.count               #=> 6
puts arr.count(2)            #=> 1