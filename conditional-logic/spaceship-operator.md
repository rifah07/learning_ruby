# Ruby Spaceship Operator (`<=>`)

The **spaceship operator** (`<=>`) is a special comparison operator in Ruby that compares two values and tells you which one is bigger, smaller, or if they're equal.

## Why is it called "Spaceship"? 

It's called the spaceship operator because `<=>` looks like a little spaceship or TIE fighter from Star Wars! 🚀

## What does it do?

The spaceship operator compares two things and returns:
- **`-1`** if the left side is **smaller**
- **`0`** if both sides are **equal**  
- **`1`** if the left side is **bigger**

## Easy way to remember:

Think of the symbols from left to right:
- `<` (less than) = `-1` 
- `=` (equal) = `0`
- `>` (greater than) = `1`


## Basic Examples

### Comparing Numbers

```ruby
# Is 3 smaller, equal, or bigger than 5?
3 <=> 5    # Result: -1 (3 is smaller than 5)

# Is 5 smaller, equal, or bigger than 5?  
5 <=> 5    # Result: 0 (5 equals 5)

# Is 8 smaller, equal, or bigger than 3?
8 <=> 3    # Result: 1 (8 is bigger than 3)
```

### Comparing Words (Strings)

Words are compared alphabetically (like in a dictionary):

```ruby
"apple" <=> "banana"   # Result: -1 (apple comes before banana)
"cat" <=> "cat"        # Result: 0 (same word)  
"zebra" <=> "apple"    # Result: 1 (zebra comes after apple)
```

**Important:** Capital letters come before lowercase letters:

```ruby
"Apple" <=> "apple"    # Result: -1 (A comes before a)
"Z" <=> "a"            # Result: -1 (Z comes before a)
```

## Why is this useful?

### 1. Sorting Lists

The spaceship operator is perfect for sorting! Here's how:

```ruby
numbers = [5, 2, 8, 1, 9]

# Sort from smallest to biggest (ascending)
numbers.sort { |a, b| a <=> b }
# Result: [1, 2, 5, 8, 9]

# Sort from biggest to smallest (descending)  
numbers.sort { |a, b| b <=> a }
# Result: [9, 8, 5, 2, 1]
```

### 2. Sorting Words

```ruby
fruits = ["banana", "apple", "cherry"]

# Sort alphabetically
fruits.sort { |a, b| a <=> b }
# Result: ["apple", "banana", "cherry"]
```

## Step-by-Step: How Sorting Works

Let's see how Ruby uses `<=>` to sort `[3, 1, 2]`:

1. Compare 3 and 1: `3 <=> 1` = `1` (3 is bigger, so swap them)
   → `[1, 3, 2]`

2. Compare 3 and 2: `3 <=> 2` = `1` (3 is bigger, so swap them)  
   → `[1, 2, 3]`

3. Compare 1 and 2: `1 <=> 2` = `-1` (1 is smaller, so don't swap)
   → `[1, 2, 3]` ✓ Done!

## Practical Examples

### Example 1: Sort by Age

```ruby
people = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 20 }
]

# Sort by age (youngest first)
people.sort { |a, b| a[:age] <=> b[:age] }
# Result: Charlie(20), Alice(25), Bob(30)
```

### Example 2: Sort by String Length

```ruby
words = ["hi", "hello", "a", "world"]

# Sort by word length (shortest first)
words.sort { |a, b| a.length <=> b.length }
# Result: ["a", "hi", "hello", "world"]
```

## Making Your Own Objects Sortable

You can make your own classes work with sorting by defining the `<=>` method:

```ruby
class Student
  attr_reader :name, :grade
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  # Define how to compare students (by grade)
  def <=>(other_student)
    self.grade <=> other_student.grade
  end
  
  def to_s
    "#{name}: #{grade}%"
  end
end

# Create some students
students = [
  Student.new("Alice", 85),
  Student.new("Bob", 92), 
  Student.new("Charlie", 78)
]

# Now we can sort them!
puts students.sort
# Result: Charlie: 78%, Alice: 85%, Bob: 92%
```

## The Comparable Magic Trick

If you add `include Comparable` to your class and define `<=>`, you get all comparison operators for free!

```ruby
class Score
  include Comparable  # This is the magic line!
  
  attr_reader :points
  
  def initialize(points)
    @points = points
  end
  
  def <=>(other)
    self.points <=> other.points
  end
end

score1 = Score.new(100)
score2 = Score.new(85)

# Now all these work automatically:
puts score1 > score2    # true
puts score1 < score2    # false  
puts score1 >= score2   # true
puts score1 <= score2   # false
puts score1 == score2   # false
```

## Common Beginner Mistakes

### 1. Forgetting the Direction

```ruby
# Wrong way (gets confusing):
numbers.sort { |a, b| b <=> a }  # Wait, which way is this sorting?

# Clear way:
numbers.sort { |a, b| a <=> b }         # smallest to biggest
numbers.sort { |a, b| b <=> a }         # biggest to smallest
numbers.sort.reverse                    # smallest to biggest, then reverse
```

### 2. Comparing Different Types

```ruby
# This doesn't work:
5 <=> "hello"   # Result: nil (can't compare number to word)

# Make sure you're comparing the same types:
5 <=> 3         # Result: 1 ✓
"hello" <=> "world"  # Result: -1 ✓
```

## Quick Reference

| Comparison | `<=>` Result | Meaning |
|------------|--------------|---------|
| `3 <=> 5` | `-1` | 3 is less than 5 |
| `5 <=> 5` | `0` | 5 equals 5 |
| `8 <=> 3` | `1` | 8 is greater than 3 |
| `5 <=> "hi"` | `nil` | Can't compare |

## Summary

The spaceship operator (`<=>`) is your tool for:
1. **Comparing** two values (-1, 0, or 1)
2. **Sorting** lists in custom ways
3. **Making** your own classes sortable

Remember: 
- `-1` means "left is smaller"
- `0` means "they're equal"  
- `1` means "left is bigger"

Start with simple number and string comparisons, then try sorting arrays. Once you're comfortable with that, experiment with sorting your own objects!

---
*Happy coding! 🚀*