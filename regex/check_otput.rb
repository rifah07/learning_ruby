def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# did not print anything cause the block is not being called

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# now it works after block.call\


def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
# this throws error as block-method parameter is not written as &block