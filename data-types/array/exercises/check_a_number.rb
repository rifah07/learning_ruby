arr = [1, 3, 5, 7, 9, 11]
number = 3

puts "Checking if #{number} is in the array: #{arr}"
# use include? method
puts "Using include? method to check if number is in the array:"
if arr.include?(number)
  puts "#{number} is in the array."
  puts "The index of #{number} is #{arr.index(number)}."
else
    puts "#{number} is not in the array."
end

# use loop
puts "Using basic loop to check if number is in the array:"
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
    puts "The index of #{number} is #{arr.index(number)}."
  else
    puts "#{num} is not the number we're looking for."
  end
end
