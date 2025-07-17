## Ruby follows an order of precedence when deciding how to evaluate multiple expressions.
# Ruby Operator Precedence

## Introduction

**Operator precedence** determines the order in which Ruby evaluates operators in expressions with multiple operators. When two operators of the same precedence appear in an expression, associativity determines the evaluation order.

For example, `10 + 20 * 30` is calculated as `10 + (20 * 30) = 610` and not as `(10 + 20) * 30 = 900` because multiplication has higher precedence than addition.

## Precedence Table

The following table lists Ruby operators from **highest precedence** to **lowest precedence**:

| Precedence | Operator(s) | Operation | Method |
|------------|-------------|-----------|---------|
| 1 | `[ ]`, `[ ]=` | Element reference, element set | Yes |
| 2 | `**` | Exponentiation | Yes |
| 3 | `!`, `~`, `+` (unary) | Boolean NOT, bitwise complement, unary plus | Yes |
| 4 | `-` (unary) | Unary minus | Yes |
| 5 | `*`, `/`, `%` | Multiplication, division, modulo | Yes |
| 6 | `+`, `-` | Addition/concatenation, subtraction | Yes |
| 7 | `<<`, `>>` | Bitwise shift-left, bitwise shift-right | Yes |
| 8 | `&` | Bitwise AND | Yes |
| 9 | `\|`, `^` | Bitwise OR, bitwise XOR | Yes |
| 10 | `>`, `>=`, `<`, `<=` | Ordering/comparison | Yes |
| 11 | `<=>`, `==`, `===`, `!=`, `=~`, `!~` | Equality, pattern matching, comparison | Yes |
| 12 | `&&` | Boolean AND | No |
| 13 | `\|\|` | Boolean OR | No |
| 14 | `..`, `...` | Range creation, Boolean flip-flops | No |
| 15 | `?`, `:` | Ternary conditional | No |
| 16 | `modifier-rescue` | Exception-handling modifier | No |
| 17 | `=`, `+=`, `-=`, etc. | Assignment operators | No |
| 18 | `defined?` | Test variable definition and type | No |
| 19 | `not` | Boolean NOT (low precedence) | No |
| 20 | `or`, `and` | Boolean OR, Boolean AND | No |
| 21 | `modifier-if`, `modifier-unless`, `modifier-while`, `modifier-until` | Conditional and loop modifiers | No |
| 22 | `{ }` blocks | Block expressions | No |

## Important Notes

### Unary Operators
- **Unary `+`** and **unary `-`** are for expressions like `+1`, `-1`, or `-(a + b)`
- These have different precedence than their binary counterparts

### Boolean Operators
The difference between `&&`/`||` and `and`/`or` is significant due to precedence:
result = true and false # => true (because = has higher precedence than 'and')  
result = true && false # => false (because && has higher precedence than =)  


### Blocks
- `{ }` blocks have higher precedence than `do...end` blocks
- Both have the lowest precedence among all operators

### Method Operators
Operators marked with **"Yes"** in the Method column are implemented as methods and can be redefined in classes.

## Overriding Precedence

Use **parentheses** to override the default precedence:

10 + 20 * 10 # => 210 (multiplication first)  
(10 + 20) * 10 # => 300 (addition first due to parentheses)  


## Associativity

When operators have the same precedence, **left-to-right associativity** applies for most operators:

100 / 10 * 10 # => 100 (evaluated as (100 / 10) * 10)  
  

## Examples

Precedence example  
5 + 3 * 2 # => 11 (not 16)  
10 - 4 / 2 # => 8 (not 3)  

Boolean precedence  
x = true && false # x = false  
y = true and false # y = true (assignment happens first)  

Range and comparison  
1..5 == 1..5 # => true  


*This reference covers Ruby operator precedence as documented in the official Ruby documentation and follows the behavior consistent across Ruby versions 1.8, 1.9, 2.0, and later.*