# Create an array of the Fibonacci sequence with inject
# Here's one way of creating an array with the first 20 Fibonacci numbers using a loop:

arr = [0, 1]
fibonacci = 18.times.inject(arr) do |fib, idx|
  fib << fib[-2] + fib[-1]
end

puts fibonacci.join(", ")