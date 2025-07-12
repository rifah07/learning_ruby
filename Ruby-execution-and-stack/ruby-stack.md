# Understanding Ruby Execution and the Stack

## What is the Call Stack?

The call stack is a fundamental data structure that Ruby uses to keep track of method calls and their execution context. Think of it as a stack of plates - you can only add or remove plates from the top, and the last plate you put on is the first one you take off (LIFO - Last In, First Out).

## How Ruby Executes Code

### The Ruby Virtual Machine (VM)

Ruby code doesn't execute directly. Instead, it goes through several stages:

1. **Parsing** - Ruby code is parsed into an Abstract Syntax Tree (AST)
2. **Compilation** - AST is compiled into bytecode instructions
3. **Execution** - The Ruby VM executes the bytecode using the call stack

### Stack Frames

Each time a method is called, Ruby creates a **stack frame** containing:
- Method name and location
- Local variables
- Method parameters
- Return address (where to go back when method finishes)
- Current line number

## Visualizing the Call Stack

Let's trace through a simple example:

```ruby
def main_program
  puts "Starting program"
  calculate_result
  puts "Program finished"
end

def calculate_result
  puts "Calculating..."
  x = get_number
  y = get_number
  puts "Result: #{x + y}"
end

def get_number
  puts "Getting number"
  42
end

main_program
```

### Stack Evolution During Execution

**Step 1: Program starts**
```
Stack: [main_program]
```

**Step 2: calculate_result is called**
```
Stack: [main_program, calculate_result]
```

**Step 3: First get_number is called**
```
Stack: [main_program, calculate_result, get_number]
```

**Step 4: First get_number returns**
```
Stack: [main_program, calculate_result]
```

**Step 5: Second get_number is called**
```
Stack: [main_program, calculate_result, get_number]
```

**Step 6: Second get_number returns**
```
Stack: [main_program, calculate_result]
```

**Step 7: calculate_result returns**
```
Stack: [main_program]
```

**Step 8: main_program finishes**
```
Stack: []
```

## Stack Frame Contents

Each stack frame contains crucial information:

```ruby
def example_method(param1, param2)
  local_var = "hello"
  another_var = param1 + param2
  nested_method_call
end

def nested_method_call
  puts "In nested method"
end
```

When `example_method` is called, its stack frame contains:
- **Method name**: `example_method`
- **Parameters**: `param1`, `param2`
- **Local variables**: `local_var`, `another_var`
- **Current line**: Which line is currently executing
- **Return address**: Where to return when method finishes

## The Stack in Action: Method Calls

### Simple Method Call
```ruby
def greet(name)
  "Hello, #{name}!"
end

message = greet("Alice")
```

**Stack evolution:**
1. `greet("Alice")` called → Stack: `[<main>, greet]`
2. `greet` executes and returns → Stack: `[<main>]`
3. Return value assigned to `message`

### Nested Method Calls
```ruby
def outer_method
  puts "In outer method"
  inner_method
  puts "Back in outer method"
end

def inner_method
  puts "In inner method"
  deepest_method
  puts "Back in inner method"
end

def deepest_method
  puts "In deepest method"
end

outer_method
```

**Stack progression:**
```
1. [<main>]
2. [<main>, outer_method]
3. [<main>, outer_method, inner_method]
4. [<main>, outer_method, inner_method, deepest_method]
5. [<main>, outer_method, inner_method]  # deepest_method returns
6. [<main>, outer_method]                # inner_method returns
7. [<main>]                             # outer_method returns
```

## Recursive Calls and Stack Growth

Recursion creates multiple stack frames for the same method:

```ruby
def factorial(n)
  if n <= 1
    1
  else
    n * factorial(n - 1)
  end
end

puts factorial(5)
```

**Stack for factorial(5):**
```
1. [<main>]
2. [<main>, factorial(5)]
3. [<main>, factorial(5), factorial(4)]
4. [<main>, factorial(5), factorial(4), factorial(3)]
5. [<main>, factorial(5), factorial(4), factorial(3), factorial(2)]
6. [<main>, factorial(5), factorial(4), factorial(3), factorial(2), factorial(1)]
```

Then it unwinds:
```
6. factorial(1) returns 1
5. factorial(2) returns 2 * 1 = 2
4. factorial(3) returns 3 * 2 = 6
3. factorial(4) returns 4 * 6 = 24
2. factorial(5) returns 5 * 24 = 120
1. Result: 120
```

## Blocks and the Stack

Blocks create their own context but share the stack frame:

```ruby
def process_items
  puts "Processing items"
  [1, 2, 3].each do |item|
    puts "Processing item: #{item}"
    helper_method(item)
  end
  puts "Done processing"
end

def helper_method(item)
  puts "Helping with #{item}"
end

process_items
```

**Stack includes block context:**
```
[<main>, process_items, block in process_items, helper_method]
```

## Exception Handling and Stack Unwinding

When an exception occurs, Ruby unwinds the stack:

```ruby
def level_one
  level_two
end

def level_two
  level_three
end

def level_three
  raise "Something went wrong!"
end

begin
  level_one
rescue => e
  puts "Caught exception: #{e.message}"
  puts "Stack trace shows the call chain"
end
```


**Exception unwinding:**
1. Exception raised in `level_three`
2. `level_three` exits (no rescue clause)
3. `level_two` exits (no rescue clause)
4. `level_one` exits (no rescue clause)
5. Exception caught in `begin/rescue` block
6. Stack trace shows: `level_three` → `level_two` → `level_one` → `<main>`

## Stack Overflow

The stack has limited size. Too many nested calls cause stack overflow:

```ruby
def infinite_recursion
  infinite_recursion  # This will eventually cause stack overflow
end

infinite_recursion
```

**Result:**
```
SystemStackError: stack level too deep
```

## Memory and Performance Implications

### Stack Memory
- Each stack frame uses memory
- Deep recursion can exhaust stack space
- Stack frames are automatically cleaned up when methods return

### Performance Considerations
- Method calls have overhead (creating/destroying stack frames)
- Tail call optimization can help in some cases
- Ruby doesn't optimize tail calls by default

## Examining the Stack at Runtime

### Using `caller` Method
```ruby
def show_stack
  puts "Current call stack:"
  caller.each_with_index do |frame, index|
    puts "#{index}: #{frame}"
  end
end

def outer
  inner
end

def inner
  show_stack
end

outer
```

### Using `caller_locations`
```ruby
def detailed_stack_info
  caller_locations.each do |location|
    puts "File: #{location.path}"
    puts "Line: #{location.lineno}"
    puts "Method: #{location.label}"
    puts "---"
  end
end
```

## Stack and Variable Scope

The stack determines variable scope:

```ruby
def outer_method
  outer_var = "I'm in outer method"
 
  def inner_method
    # outer_var is not accessible here
    inner_var = "I'm in inner method"
    puts inner_var
  end
 
  inner_method
  puts outer_var  # This works
end
```

## Best Practices for Stack Management

### 1. Avoid Deep Recursion
```ruby
# Instead of deep recursion:
def bad_sum(arr, index = 0)
  return 0 if index >= arr.length
  arr[index] + bad_sum(arr, index + 1)
end

# Use iteration:
def good_sum(arr)
  total = 0
  arr.each { |num| total += num }
  total
end
```

### 2. Use Tail Recursion When Possible
```ruby
def tail_factorial(n, acc = 1)
  return acc if n <= 1
  tail_factorial(n - 1, n * acc)
end
```

### 3. Monitor Stack Depth
```ruby
def recursive_method(depth = 0)
  puts "Current depth: #{depth}"
  if depth > 100
    puts "Stack getting deep, stopping"
    return
  end
  recursive_method(depth + 1)
end
```



## Common Stack-Related Errors

### 1. SystemStackError
```ruby
# Infinite recursion
def endless_loop
  endless_loop
end
```

### 2. LocalJumpError
```ruby
# Return outside method
def problematic_method
  [1, 2, 3].each do |num|
    return num if num == 2  # This can cause issues
  end
end
```

### 3. NoMethodError in Stack Context
```ruby
def chain_call
  obj = get_object
  obj.method_name  # If obj is nil, error occurs here
end
```

## Debugging Stack Issues

### 1. Check Stack Depth
```ruby
def check_depth
  puts "Current stack depth: #{caller.length}"
end
```

### 2. Log Method Entry/Exit
```ruby
def traced_method
  puts "Entering #{__method__}"
  result = actual_work
  puts "Exiting #{__method__}"
  result
end
```

### 3. Use Exception Handling
```ruby
def safe_method
  risky_operation
rescue StandardError => e
  puts "Error in #{__method__}: #{e.message}"
  puts "Stack trace: #{e.backtrace.join("\n")}"
  raise
end
```

## The Stack and Ruby's Object Model

Ruby's object model interacts with the stack:

```ruby
class MyClass
  def instance_method
    puts "Instance method called"
    puts "Self is: #{self}"
    class_method
  end
 
  def self.class_method
    puts "Class method called"
    puts "Self is: #{self}"
  end
end

obj = MyClass.new
obj.instance_method
```

**Stack frames include:**
- Current `self` object
- Method lookup chain
- Constant lookup scope

## Conclusion

Understanding Ruby's execution model and call stack is crucial for:
- **Debugging** - Stack traces make sense when you understand the stack
- **Performance** - Knowing the cost of method calls
- **Design** - Making informed decisions about recursion vs iteration
- **Memory management** - Understanding when stack frames are created/destroyed

The call stack is the foundation that makes method calls, variable scoping, and exception handling possible. When you understand how Ruby manages the stack, you'll be better equipped to write efficient code and debug issues when they arise.

This knowledge directly prepares you for understanding stack traces, which are simply a snapshot of the call stack at the moment an error occurs.