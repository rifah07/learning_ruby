=begin
The #detect method (also implemented as #find) is similar to #select,
but instead of returning a collection of objects that match the given criteria,
it will “detect” the first matching element it finds and return only that object. 
  - https://www.codementor.io/ruby-on-rails/tutorial/rubys-swiss-army-knife-the-enumerable-module
=end

numbers = [1, 2, 3, 4, 5]

result = numbers.detect {|num| num.even?}
puts "First even number in the array is: #{result}"