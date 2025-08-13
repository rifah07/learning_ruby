def say(words)
  puts words + '.'    ## <= We only make the change here!
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")
#say(5) # TypeError


a = 5

def some_method
  a = 3
end

puts a # 5 cause a is global variable and it is printing  outside the block