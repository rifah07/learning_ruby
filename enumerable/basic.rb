=begin 
Enumerables are a set of convenient built-in methods in Ruby that are included 
as part of both arrays and hashes. There are some iteration patterns 
that you’ll find yourself doing again and again, such as transforming, searching for, 
and selecting subsets of elements in your collections.
Enumerables were designed to make implementing these iteration patterns 
(and therefore your life as a developer) much, much easier. - The Odin Project
=end

# Example:
fruits = ["apple", "banana", "cherry", "jackfruit"]
liked_fruits = []

for fruit in fruits do
  if fruit != "jackfruit"
    liked_fruits << fruit
  end
end

puts liked_fruits

# now with less code we can do the same task
 liked_fruits_1 = fruits.select { |fruit| fruit != "jackfruit" }
 puts "With enumerable: #{liked_fruits_1}"

 # or we can also do this
 liked_fruits_2 = fruits.reject {|fruit| fruit == "jackfruit"}
 puts "With enumerable reject: #{liked_fruits_2}"