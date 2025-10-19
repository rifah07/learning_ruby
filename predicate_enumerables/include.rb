numbers = [5, 6, 7, 8]
element = 6
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

puts result
# => true

element = 3
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end

puts result
#=> false


# we can do the above task with only one line of code using the `include?` method
puts numbers.include?(element)
