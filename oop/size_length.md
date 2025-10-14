# Ruby: `array.size` vs `array.length`

Both `size` and `length` methods for Ruby arrays return the total number of elements and are **functionally identical**.

---

## Method Comparison

| Method        | Description                                            | Example                |
|---------------|-------------------------------------------------------|------------------------|
| `array.size`  | Returns the number of elements (alias for `length`)   | `[1, 2, 3].size #=> 3` |
| `array.length`| Returns the number of elements                        | `[1, 2, 3].length #=> 3` |

---

### Details

- `size` and `length` (for arrays) provide the same result and are interchangeable.
- Both always return an integer and do **not** take any arguments.
- The choice between them is **stylistic**. Some prefer `size` for general collections and `length` for strings, but in practice, either can be used.

---

### Rails Note

In Rails, for collections that come from databases, there can be subtle behavioral differences, especially regarding lazy loading and database queries. For pure Ruby arrays, however, **no difference exists**.

---