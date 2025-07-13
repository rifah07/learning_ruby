def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

#Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.

# Now this should worK
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }