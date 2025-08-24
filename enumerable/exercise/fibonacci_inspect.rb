# Create an array of the Fibonacci sequence with inject
# Here's one way of creating an array with the first 20 Fibonacci numbers using a loop:

arr = [0, 1]
18.times do
  p arr << arr[-2] + arr[-1]
end