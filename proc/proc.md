# Proc in Ruby - Complete Theory and Guide

A **Proc** (procedure) in Ruby is an object that encapsulates a block of code, which can be stored in a variable, passed to methods, and executed later. Procs are fundamental to Ruby's functional programming capabilities and provide powerful closure functionality.

## Table of Contents

- [Proc in Ruby - Complete Theory and Guide](#proc-in-ruby---complete-theory-and-guide)
  - [Table of Contents](#table-of-contents)
  - [What is a Proc?](#what-is-a-proc)
    - [Basic Proc creation and execution](#basic-proc-creation-and-execution)
    - [Key Characteristics](#key-characteristics)
  - [Creating Procs](#creating-procs)
    - [Method 1: Proc.new](#method-1-procnew)
    - [Method 2: proc method (Kernel#proc)](#method-2-proc-method-kernelproc)
    - [Method 3: lambda (Special type of Proc)](#method-3-lambda-special-type-of-proc)
    - [Method 4: Converting blocks to Procs](#method-4-converting-blocks-to-procs)

## What is a Proc?

A Proc is an object that contains a block of code and the context (binding) in which it was created. This makes Procs **closures** - they remember and can access variables from their creation environment.

### Basic Proc creation and execution
   greeting = Proc.new { puts "Hello, World!" }  
   greeting.call # Output: Hello, World!  


### Key Characteristics

- **First-class objects**: Can be stored in variables, passed as arguments, and returned from methods
- **Closures**: Retain access to variables in their lexical scope
- **Reusable**: Can be called multiple times
- **Flexible**: Don't enforce strict argument checking

## Creating Procs

### Method 1: Proc.new

- Without parameters  
simple_proc = Proc.new { puts "Hello from Proc!" }  

- With parameters  
greet_proc = Proc.new { |name| puts "Hello, #{name}!" }  

- Multi-line Proc  
complex_proc = Proc.new do |x, y|  
result = x + y  
puts "The sum is: #{result}"  
result  
end  


### Method 2: proc method (Kernel#proc)

- Shorthand method  
my_proc = proc { |x| x * 2 }  


### Method 3: lambda (Special type of Proc)

- Using lambda keyword  
my_lambda = lambda { |x| x ** 2 }  

- Using stabby lambda syntax (Ruby 1.9+)  
my_lambda = ->(x) { x ** 2 }  
my_lambda = -> x { x ** 2 } # Parentheses optional for single parameter  


### Method 4: Converting blocks to Procs

    def capture_block(&block)  
    block # This is now a Proc object  
    end  

    my_proc = capture_block { |x| x.upcase }  


