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

# This will ot work
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

=begin
see here '&' is missing in the argument list of the method definition. '&' allows a block to be passed as a parameter.
The block is not being passed as a Proc object, so it cannot be called with .call. 
Instead, it is treated as a regular argument, which does not have a call method.
=end