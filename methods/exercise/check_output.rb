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