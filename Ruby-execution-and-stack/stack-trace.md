# Understanding Ruby Stack Traces

## What is a Stack Trace?

A stack trace is a report of the active stack frames at a certain point in time during program execution. When an error occurs in Ruby, it shows you the sequence of method calls that led to that error, helping you trace back through your code to find the root cause.

## Anatomy of a Ruby Stack Trace

```ruby
example.rb:10:in `divide_by_zero': divided by 0 (ZeroDivisionError)
        from example.rb:14:in `calculate'
        from example.rb:18:in `process_data'
        from example.rb:22:in `<main>'
```

### Breaking Down Each Line

1. **Error Line** (First Line):
   ```
   example.rb:10:in `divide_by_zero': divided by 0 (ZeroDivisionError)
   ```
   - `example.rb` - File name where error occurred
   - `10` - Line number where error occurred
   - `divide_by_zero` - Method name where error occurred
   - `divided by 0` - Error message
   - `ZeroDivisionError` - Exception class

2. **Stack Frame Lines** (Following Lines):
   ```
   from example.rb:14:in `calculate'
   ```
   - `from` - Indicates this is a calling method
   - `example.rb:14` - File and line number of the calling code
   - `calculate` - Method name that called the failed method

## Reading Stack Traces: Top to Bottom

Stack traces are read from **top to bottom**, showing the call chain:

```ruby
# This code...
def method_a
  method_b
end

def method_b
  method_c
end

def method_c
  raise "Error!"
end

method_a
```

```
# Produces this stack trace:
example.rb:10:in `method_c': Error! (RuntimeError)
        from example.rb:6:in `method_b'
        from example.rb:2:in `method_a'
        from example.rb:13:in `<main>'
```

**Reading order:**
1. Error occurred in `method_c` at line 10
2. `method_c` was called by `method_b` at line 6
3. `method_b` was called by `method_a` at line 2
4. `method_a` was called from the main program at line 13


## Common Stack Trace Patterns

### 1. Method Call Chain
```ruby
NoMethodError: undefined method `upcase' for nil:NilClass
        from user.rb:15:in `format_name'
        from user.rb:8:in `display_user'
        from app.rb:25:in `show_profile'
        from app.rb:10:in `<main>'
```

### 2. Block Execution
```ruby
ArgumentError: wrong number of arguments (given 1, expected 0)
        from example.rb:5:in `block in process_items'
        from example.rb:4:in `each'
        from example.rb:4:in `process_items'
        from example.rb:10:in `<main>'
```

### 3. Class/Module Context
```ruby
NameError: uninitialized constant MyClass::UNDEFINED_CONSTANT
        from lib/my_class.rb:12:in `MyClass#calculate'
        from lib/calculator.rb:8:in `Calculator#process'
        from main.rb:5:in `<main>'
```

## Special Notations

### `<main>`
- Indicates code running at the top level (not inside a method)
- Usually the entry point of your program

### `block in method_name`
- Shows execution inside a block within the named method
- Common with iterators like `each`, `map`, `select`

### `rescue in method_name`
- Indicates the error occurred in a rescue block
- Shows exception handling context

## Practical Debugging Tips

### 1. Start from the Top
Always look at the first line first - it tells you exactly where the error occurred.

### 2. Look for Your Code
Filter out framework/library code and focus on your application files:
```ruby
# Your code - focus here
from app/models/user.rb:25:in `validate_email'
from app/controllers/users_controller.rb:12:in `create'

# Framework code - usually not the issue
from activerecord-6.1.0/lib/active_record/base.rb:442:in `save'
```

### 3. Check Method Arguments
Look for patterns indicating parameter issues:
```ruby
ArgumentError: wrong number of arguments (given 2, expected 1)
NoMethodError: undefined method `[]' for nil:NilClass
```

### 4. Follow the Call Chain
Trace backwards to understand how you got to the error:
```ruby
# Error in format_name suggests name is nil
from user.rb:15:in `format_name'
# Check what display_user is passing
from user.rb:8:in `display_user'  
# Check what show_profile is doing
from app.rb:25:in `show_profile'
```

## Common Error Patterns and Solutions

### NoMethodError
```ruby
NoMethodError: undefined method `upcase' for nil:NilClass
```
**Solution:** Check for nil values before calling methods
```ruby
# Instead of:
name.upcase

# Use:
name&.upcase  # Safe navigation
# or
name.upcase if name
```

### ArgumentError
```ruby
ArgumentError: wrong number of arguments (given 1, expected 2)
```
**Solution:** Check method signatures and calling code

### LoadError
```ruby
LoadError: cannot load such file -- missing_gem
```
**Solution:** Check your Gemfile and require statements

### NameError
```ruby
NameError: uninitialized constant MyClass
```
**Solution:** Check class names, require statements, and file locations

## Advanced Stack Trace Features

### Custom Exception Information
```ruby
begin
  risky_operation
rescue StandardError => e
  puts e.message
  puts e.backtrace.join("\n")
  puts e.backtrace_locations.map(&:to_s)
end
```

### Filtering Stack Traces
```ruby
# Show only application files
puts e.backtrace.select { |line| line.include?('app/') }

# Remove gem paths
puts e.backtrace.reject { |line| line.include?('gems/') }
```

## Tools for Better Stack Traces

### 1. Better Errors Gem
```ruby
gem 'better_errors'
gem 'binding_of_caller'
```

### 2. Pry for Debugging
```ruby
gem 'pry'
gem 'pry-byebug'

# Add to your code:
binding.pry
```

### 3. Ruby's Built-in Caller
```ruby
def debug_trace
  puts caller
end
```

## Best Practices

1. **Read the full trace** - Don't just look at the first line
2. **Focus on your code** - Filter out framework noise
3. **Use meaningful method names** - Makes traces easier to follow
4. **Add context to errors** - Include relevant information in error messages
5. **Use logging** - Add strategic logging to trace execution flow

## Example: Debugging a Real Stack Trace

```ruby
# Given this stack trace:
NoMethodError: undefined method `name' for nil:NilClass
        from app/models/user.rb:15:in `full_name'
        from app/views/users/show.html.erb:8:in `block in _app_views_users_show_html_erb'
        from app/controllers/users_controller.rb:12:in `show'

# Debugging steps:
# 1. Error in User#full_name at line 15
# 2. Called from users/show.html.erb at line 8
# 3. Initiated from UsersController#show at line 12
# 4. Issue: some object is nil when calling .name
# 5. Check what objects are being used in full_name method
```

## Conclusion

Stack traces are your debugging roadmap. They tell you not just where something went wrong, but how your program got there. Learning to read them effectively will significantly improve your debugging skills and reduce the time spent hunting down bugs.

Remember: the stack trace is trying to help you - it's showing you the exact path your code took to reach the error. Follow that path, and you'll find your bug.