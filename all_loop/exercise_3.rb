# Write a method that counts down to zero using recursion.

def countdown(n)
  if n < 0
    puts 'COUNTDOWN FINISHED'
  else
    puts n
    countdown(n - 1)
  end
end

countdown(5)
