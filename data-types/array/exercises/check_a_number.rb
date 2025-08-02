arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is in the array."
  puts "The index of #{number} is #{arr.index(number)}."
  else
    puts "#{number} is not in the array."
  end