# practice 1
# a = "hi there"
# b = a
# a = "not here"
# puts a
# puts b

# practice 2
# a = [1, 2, 3, 3]
# b = a
# c = a.uniq
# print "a: #{a}\n"
# print "b: #{b}\n"
# print "c: #{c}\n"
#
# d = a.uniq!
# puts "After calling uniq! on a:"
# print "a: #{a}\n"
# print "b: #{b}\n"
# print "c: #{c}\n"
# print "d: #{d}\n"

# Practice 3
# def test(b)
#   b.map {|letter| "I like the letter: #{letter}"}
# end
#
# a = ['a', 'b', 'c']
# puts test(a)

# practice 4
puts 'powerball' =~ /b/ # =~ checks if the pattern matches the string and returns the index of the first match or nil if no match is found
puts 'powerball' =~ /z/ # returns nil since 'z' is not in the string

# practice 5
puts 'powerball'.match(/b/) # match returns a MatchData object if the pattern matches, or nil if no match is found
puts 'powerball'.match(/z/) # returns nil since 'z' is not in the string

# practice 6
puts 'powerball'.include?('b') # include? checks if the string contains the specified substring and returns true or false
puts 'powerball'.include?('z') # returns false since 'z' is not in the string
