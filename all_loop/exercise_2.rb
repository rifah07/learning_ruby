# Write a while loop that takes input from the user, performs an action,
# and only stops when the user types "STOP". Each loop can get info from the user.

x = ""
while x != "STOP"
    x = gets.chomp
    puts "#{x} is the input value"
    #x += 1
end
