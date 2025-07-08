# practice 1
=begin
a = "hi there"
b = a
a = "not here"
puts a
puts b
=end

# practice 2
a = [1, 2, 3, 3]
b = a
c = a.uniq
print "a: #{a}\n"
print "b: #{b}\n"
print "c: #{c}\n"

d = a.uniq!
puts "After calling uniq! on a:"
print "a: #{a}\n"
print "b: #{b}\n"
print "c: #{c}\n"
print "d: #{d}\n"