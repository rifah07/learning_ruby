nums = [1,2,3,4,5,6,7,8,9,10]

sum = nums.inject(0) do |acc, num|
   acc += num
  end
 
p sum

# The inject method takes a collection and reduces it to a single value, such as a sum of values.