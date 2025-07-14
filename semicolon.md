# Semicolon's Role in Ruby

## Overview

In Ruby, **semicolons are optional** and serve as statement separators rather than statement terminators. Unlike languages such as C++ or Java where semicolons are required at the end of each statement, Ruby follows the convention used in shells like `sh` and `csh`.

## Primary Functions

### Statement Separation on Single Lines

The main role of semicolons in Ruby is to **separate multiple statements on the same line**. When you want to write more than one statement per line, semicolons become necessary:

Multiple statements on one line - semicolon required  
name = "John"; age = 25; puts "Hello #{name}, you are #{age} years old"  

Single statements on separate lines - no semicolon needed  
name = "John"  
age = 25  

### Line Endings vs Semicolons

Ruby treats **linefeeds as semicolons**. This means:
- Semicolons are **not required at the end of lines**
- A newline character effectively terminates a statement
- You can omit semicolons when each statement is on its own line

## Specific Use Cases

### Class and Method Definitions

Semicolons are commonly used in **one-line class and method definitions**:

Empty class definition  
class Dog; end  

Empty method definition  
def bark; end  

Method with body on same line  
def greet(name); puts "Hello, #{name}!"; end  

