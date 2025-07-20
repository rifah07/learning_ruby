# The loop loop (say what????) is Ruby’s loop that just won’t quit. 
# It’s an infinite loop that will keep going unless you specifically request for it to stop, using the break command.
# - The Odlin Project

i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end


