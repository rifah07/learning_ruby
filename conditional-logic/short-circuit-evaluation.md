# Ruby Logical Operators: Short Circuit Evaluation

## Overview

One thing to keep in mind with the `&&` and `||` operators is the order of logic. The expressions are always evaluated from left to right.

## The `&&` (AND) Operator

Using the `&&` operator, both expressions must return true. If the first expression encountered returns false, then the second expression is never checked. To the Ruby interpreter, it's pointless to evaluate the second half as the overall expression can never return true.

```ruby
# Example: If first_condition is false, second_condition is never evaluated
first_condition && second_condition
```

## The `||` (OR) Operator

With the `||` operator, if the first expression evaluates to true, then the second expression is never checked because the complete expression is already true, and the code in the block is run.

```ruby
# Example: If first_condition is true, second_condition is never evaluated
first_condition || second_condition
```

## Short Circuit Evaluation

This behavior is known as **short circuit evaluation**. It's an optimization technique that:
- Improves performance by avoiding unnecessary evaluations
- Can prevent errors from methods that might not be safe to call
- Is a fundamental concept in many programming languages, not just Ruby

---

*Source: The Odin Project*