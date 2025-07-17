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