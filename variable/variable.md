# Ruby Variables: Basic Concepts

## What is a Variable?

A **variable** is a name that you use to store a value in your Ruby program. You can think of a variable as a labeled box that holds data. Whenever you use the variable’s name, Ruby gives you the value inside the box.

## How to Create a Variable

To create a variable, pick a name and use the `=` sign to assign a value:

name = "Alice"  
age = 25  

- Here, `name` holds the text `"Alice"`.  
- `age` holds the number `25`.  

You can use these variables later in your program:  
puts name # Output: Alice  
puts age # Output: 25  


## Variable Naming Rules

- Variable names must start with a **lowercase letter** or an **underscore** (`_`).
- Names should describe what the variable stores, like `price`, `user_name`, or `total`.

## Changing Variable Values

You can change the value of a variable at any time:

age = 18  
age = 33 # Now age is 33  


## Using Variables in Calculations

Variables can be used in math and other operations:

a = 10  
b = 5  
sum = a + b # sum is 15  

You can also update a variable using its current value:  
count = 5  
count = count + 2 # count is now 7  

---

Ruby also provides shortcut operators:

| Example        | Shortcut    | Meaning            |
| -------------- | ---------- | ------------------ |
| `x = x + 1`    | `x += 1`   | Add 1 to x         |
| `x = x - 2`    | `x -= 2`   | Subtract 2 from x  |
| `x = x * 3`    | `x *= 3`   | Multiply x by 3    |
| `x = x / 2`    | `x /= 2`   | Divide x by 2      |
[9]

## Types of Variables in Ruby

Ruby has different kinds of variables, based on where they can be used:

- **Local variable:** Starts with a lowercase letter or `_`. Used inside methods or blocks.
- **Global variable:** Starts with `$`. Can be used anywhere, but should be avoided for beginners.
- **Instance variable:** Starts with `@`. Used inside classes.
- **Class variable:** Starts with `@@`. Shared among all instances of a class.
- **Constant:** Starts with a capital letter. Its value should not change.

For beginners, you will mostly use **local variables**.

## Data Types

Ruby variables can store different types of data:

- **Numbers:** `age = 25`
- **Strings:** `name = "Alice"`
- **Arrays:** `numbers = [1, 2, 3]`
- **Hashes:** `person = {name: "Alice", age: 25}`
- more detail see https://github.com/rifah07/learning_ruby/blob/master/data-types/data-types.md

You do **not** need to declare the data type. Ruby figures it out for you.

## Why Use Variables?

- To **store** and **reuse** information.
- To **make code easier to read** and update.
- To **avoid repeating values** in your code[5][9].

## Practice

Try these in your Ruby console or file:  

    orange = 300  
    apple = 120  
    total = orange + apple  
    puts total # Output: 420

---


## What Does "Mutation" Mean?

**Mutation** means changing the contents of the object that a variable points to, *without* creating a new object. This is different from just changing what the variable points to.

- **Example of mutation (changing the object itself):**
  
  ```bash
    colors = ["red", "green"]
    colors << "blue" # Now colors is ["red", "green", "blue"]

Here, the `colors` array itself is changed (mutated), and any variable pointing to this array will see the change.

- **Example of reassignment (not mutation):**

  ```bash
        colors = ["red", "green"]
        colors = ["yellow", "purple"] # Now colors points to a new array

Here, `colors` now points to a new array, but the original array is unchanged.

## Key Points About Variables

- A variable *stores a reference* to a value or object, not the object itself.
- If two variables point to the same object, changing (mutating) the object through one variable affects the other.
- Some objects (like numbers, symbols) can’t be mutated—they are **immutable**.

## Examples

    Assigning a value  
    score = 10  

    Changing the value  
    score = 20 # Now score is 20  

    Mutating an array
    numbers =
    numbers << 4 # numbers is now

