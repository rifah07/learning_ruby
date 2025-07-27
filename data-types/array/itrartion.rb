arr = [1, 2, 3, 4, 5]
arr.each {|a| print a -= 10, " "} # this does not change the arr- array
puts arr