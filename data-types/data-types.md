# Ruby Basic Data Types

Ruby is very object-oriented, which means that absolutely everything in Ruby is an object, even the most basic data types. There are mainly six types of data commonly used in Ruby’s basic data types:

- Numbers (integers and floats)
- Strings
- Symbols
- Booleans (`true`, `false`, and `nil`)
- Arrays
- Hashes

## Ruby Data Types Table

| Data Type | Example         | Description                                 |
|-----------|----------------|---------------------------------------------|
| Number    | `42`, `3.14`   | Integers and floats for numeric values      |
| String    | `"hello"`      | Sequence of characters                      |
| Symbol    | `:name`        | Immutable, reusable identifier              |
| Boolean   | `true`, `false`| Logical true/false values                   |
| Array     | `[1, 2, 3]`    | Ordered, index-based collection             |
| Hash      | `{a: 1, b: 2}` | Key-value pairs (dictionary-like structure) |

## Numbers

Ruby supports all the typical math operators you would expect.
There are 2 types of `Numbers` in Ruby. These are  
- Integers and  
- Floats (contain decimal points)

### If arithmetic operation with two integers happen in Ruby, the result will always be an integer. To obtain an float answer, just replace one of the integers in the expression with a float. And it is easy to convert integer to float and vice-versa in Ruby (to_i, to_f).

---
## String

Strings can be formed with either double "" or single'' quotation marks, also known as string literals. They are pretty similar, but there are some differences. Specifically, string interpolation and the escape characters, only work inside double quotation marks, not single quotation marks.