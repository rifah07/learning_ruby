# practice 1
=begin
a = "hi there"
b = a
a = "not here"
puts a
puts b
=end

# practice 2
=begin
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
=end

# Practice 3
def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
puts test(a)