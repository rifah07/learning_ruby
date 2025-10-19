def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(num1, num2)
  num1 * num2
end

def div(num1, num2)
  num1 / num2
end

# now let's call methods
puts add(3, 7)
puts subtract(10, 4)
puts multiply(5, 6)
puts div(20, 4)

# let's use these methods as arguments
puts "After adding subtraction of 10,4 and multiplication of 5,6: #{add(subtract(10, 4), multiply(5, 6))}"
