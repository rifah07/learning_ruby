# Ruby Debugging Gems: Installation and Usage Guide

## Overview of Debugging Gems

These four gems work together to provide a powerful debugging experience:

- **`better_errors`** - Enhanced error pages with better formatting and interactive features
- **`binding_of_caller`** - Enables interactive debugging in error pages (REPL)
- **`pry`** - Interactive Ruby shell replacement for IRB
- **`pry-byebug`** - Adds step-by-step debugging capabilities to Pry

## Installation Methods

### Method 1: Using Bundler (Recommended)

Add these gems to your `Gemfile`:

```ruby
# Gemfile
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry'
  gem 'pry-byebug'
end
```

For Rails applications, you might also want them in test:

```ruby
# Gemfile
group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end
```

Then run:
```bash
bundle install
```

### Method 2: Direct Installation

```bash
gem install better_errors
gem install binding_of_caller
gem install pry
gem install pry-byebug
```

### Method 3: Rails Application Setup

For new Rails apps:
```bash
# Create new Rails app
rails new myapp
cd myapp

# Add gems to Gemfile (see Method 1)
# Then run:
bundle install
```

## Configuration

### Basic Pry Configuration

Create a `.pryrc` file in your home directory or project root:

```ruby
# ~/.pryrc or .pryrc in project root

# Enable better_errors integration
if defined?(BetterErrors)
  BetterErrors.application_root = Dir.pwd
end

# Pry configuration
Pry.config.editor = 'code'  # or 'vim', 'nano', etc.
Pry.config.history_file = "~/.pry_history"

# Custom prompt
Pry.config.prompt = Pry::Prompt.new(
  "custom",
  "Custom prompt",
  [
    proc { |obj, nest_level, _| "#{obj}:#{nest_level}> " },
    proc { |obj, nest_level, _| "#{obj}:#{nest_level}* " }
  ]
)

# Helpful aliases
Pry.config.commands.alias_command 'c', 'continue'
Pry.config.commands.alias_command 's', 'step'
Pry.config.commands.alias_command 'n', 'next'
Pry.config.commands.alias_command 'f', 'finish'
```

### Rails Configuration

In `config/environments/development.rb`:

```ruby
# config/environments/development.rb
Rails.application.configure do
  # Other development config...
  
  # Better Errors configuration
  if defined?(BetterErrors)
    BetterErrors.application_root = Rails.root
    BetterErrors.editor = :code  # or :vim, :sublime, etc.
    
    # Allow Better Errors in development
    BetterErrors::Middleware.allow_ip! "0.0.0.0/0"
  end
end
```

## Using Better Errors

### Basic Usage

Better Errors works automatically once installed. When an error occurs in development, you'll see:

1. **Enhanced error page** with syntax highlighting
2. **Interactive shell** (if `binding_of_caller` is installed)
3. **Variable inspection** in each stack frame
4. **Source code context** around the error

### Interactive Features

With `binding_of_caller` installed, you can:

```ruby
# In the error page console:
puts local_variables    # See all local variables
puts instance_variables # See all instance variables
puts self              # Inspect current object

# Execute any Ruby code in the error context
user.name if defined?(user)
```

### Security Note

**Important**: Better Errors should only be used in development as it can expose sensitive information.

## Using Pry for Interactive Debugging

### Basic Pry Commands

Start Pry REPL:
```bash
pry
```

Inside Pry:
```ruby
# Navigation
ls              # List methods and variables
cd object       # Change context to object
nesting         # Show current nesting level
exit            # Exit current level

# Code exploration
show-source method_name    # Show method source
show-doc method_name       # Show method documentation
whereami                   # Show current code location

# History
hist           # Show command history
hist --grep pattern  # Search history

# Help
help           # Show all commands
help command   # Show specific command help
```

### Using binding.pry

Add binding.pry to your code where you want to debug:

```ruby
def problematic_method
  x = 42
  y = "hello"
  binding.pry  # Execution stops here
  result = x + y  # This line won't execute until you continue
  return result
end
```

When execution hits `binding.pry`, you'll get an interactive shell where you can:
- Inspect variables (`x`, `y`)
- Execute Ruby code
- Step through execution
- Examine the call stack

## Using Pry-Byebug for Step Debugging

### Installation Check

Once installed, pry-byebug adds step-by-step debugging capabilities to pry.

### Essential Commands

```ruby
# Step debugging
step    # Step into method calls
next    # Step over method calls  
finish  # Step out of current method
continue # Continue execution

# Shortcuts (if configured)
s       # step
n       # next
f       # finish
c       # continue

# Breakpoints
break Class#method     # Set breakpoint at method
break file.rb:10       # Set breakpoint at line
break-condition 1 x > 5 # Conditional breakpoint
list-breakpoints       # Show all breakpoints
delete-breakpoint 1    # Delete breakpoint

# Stack navigation
up      # Move up the stack
down    # Move down the stack
frame 2 # Jump to specific frame
backtrace # Show full stack trace
```

### Example Debugging Session

```ruby
# test.rb
def calculate_total(items)
  total = 0
  items.each do |item|
    binding.pry  # Debugger starts here
    total += item[:price] * item[:quantity]
  end
  total
end

items = [
  { name: "Book", price: 10, quantity: 2 },
  { name: "Pen", price: 1, quantity: 5 }
]

result = calculate_total(items)
puts "Total: #{result}"
```

Run with:
```bash
ruby test.rb
```

Debug session:
```ruby
# When binding.pry is hit:
[1] pry(main)> item
=> {:name=>"Book", :price=>10, :quantity=>2}

[2] pry(main)> item[:price]
=> 10

[3] pry(main)> total
=> 0

[4] pry(main)> next  # Move to next line
[5] pry(main)> total
=> 20

[6] pry(main)> continue  # Continue execution
```

## Advanced Usage Patterns

### Conditional Breakpoints

```ruby
def process_data(data)
  data.each do |item|
    binding.pry if item[:status] == 'error'  # Only break on errors
    process_item(item)
  end
end
```

### Remote Debugging

For debugging in other processes like Puma or Sidekiq, use binding.pry_shell:

```ruby
# In background job or server process
def background_task
  binding.pry_shell  # Opens remote pry session
  # Your code here
end
```

### Debugging Tests

```ruby
# In your test file
it "should calculate correctly" do
  result = calculate_something
  binding.pry  # Debug test execution
  expect(result).to eq(expected_value)
end
```

Run with:
```bash
bundle exec rspec spec/my_spec.rb
```

### Debugging Rake Tasks

```ruby
# In your Rake task
task :debug_task do
  data = fetch_data
  binding.pry  # Debug rake task
  process_data(data)
end
```

## Troubleshooting Common Issues

### 1. Better Errors Not Showing

Check your Gemfile groups:
```ruby
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end
```

### 2. REPL Not Available

If you see "add gem 'binding_of_caller' to your Gemfile", make sure it's properly installed:

```bash
bundle list | grep binding_of_caller
```

### 3. Pry-Byebug Commands Not Working

Ensure pry-byebug is loaded:
```ruby
# In your code or .pryrc
require 'pry-byebug'
```

### 4. Binding.pry Not Stopping

If binding.pry is on the last line of a program, it might not trigger. Add another line after it:

```ruby
binding.pry
nil  # Add this line
```

### 5. Security Warnings

In production, ensure these gems are only in development group:

```ruby
# Gemfile
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
end
```

## Best Practices

### 1. Use Appropriate Groups

```ruby
# Development-only gems
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

# Development and test gems
group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
end
```

### 2. Remove Debugging Code

Always remove `binding.pry` before committing:

```bash
# Search for leftover binding.pry
grep -r "binding.pry" app/
```

### 3. Use Conditional Breakpoints

```ruby
# Instead of always breaking
binding.pry if Rails.env.development? && some_condition
```

### 4. Configure Editor Integration

```ruby
# .pryrc
Pry.config.editor = 'code'  # VS Code
# or
Pry.config.editor = 'vim'   # Vim
# or  
Pry.config.editor = 'subl'  # Sublime Text
```

## Useful Pry Plugins

Additional gems that enhance the debugging experience:

```ruby
group :development do
  gem 'pry-rails'          # Rails-specific pry features
  gem 'pry-doc'            # Documentation lookup
  gem 'pry-stack_explorer' # Stack frame navigation
  gem 'awesome_print'      # Pretty printing
end
```

## Quick Reference

### Essential Commands Summary

```ruby
# Basic Pry
binding.pry     # Start debugging
exit            # Exit pry session
exit!           # Exit entire program

# Step debugging (pry-byebug)
step            # Step into
next            # Step over  
finish          # Step out
continue        # Continue execution

# Exploration
ls              # List methods/variables
whereami        # Show current location
show-source     # Show method source
cd object       # Change context

# Better Errors
# - Automatic enhanced error pages
# - Interactive console in error context
# - Variable inspection per stack frame
```

This setup gives you professional-grade debugging tools that will significantly improve your Ruby development workflow. The combination of better error pages, interactive debugging, and step-by-step execution makes finding and fixing bugs much more efficient.