def say(words)
  puts words + '.'    ## <= We only make the change here!
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")
#say(5) # TypeError


=begin
a = 5

def some_method
  a = 3
end

puts a # 5 cause a is global variable and it is printing  outside the block
=end

def some_method(number)
  number = 7 # this is implicitly returned by the method
end

a = 5
some_method(a)
puts a # 5 cause a is global variable and it is printing  outside the block


# another example
a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently
def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

# another example
def second
  a = 3 + 4
  puts "second method"  # This is the last statement, and puts returns nil
end

print "The return value of second method is: "
puts second

# to see actual return value this code below works
result = second
print "The return value is: "
p result