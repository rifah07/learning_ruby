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
