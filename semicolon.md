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