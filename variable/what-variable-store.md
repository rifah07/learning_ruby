# What Ruby Variables Actually Store

## The Simple Answer

In Ruby, **a variable stores a reference (pointer) to an object**, not the actual value itself. Think of a variable as a label that points to where the real data lives in memory.

## How Ruby Memory Works

Ruby uses a **heap-based memory system** where objects are stored in fixed-size slots called **RVALUE**. Each slot is **40 bytes** in size and works like this:

- **8 bytes:** Object flags and metadata
- **8 bytes:** Class pointer (what type of object this is)  
- **24 bytes:** Object-specific data or pointer to external data

## Two Storage Strategies

### Small Objects (Embedded Storage)
For small data that fits within the 24-byte space, Ruby stores the actual value directly in the slot:

    name = "Hi" # String fits in the slot  
    age = 25 # Number fits in the slot  
    flag = true # Boolean fits in the slot  


### Large Objects (External Storage)
For larger data that doesn't fit in 24 bytes, Ruby stores a **pointer** to external memory:

    long_text = "This is a very long string that exceeds 24 bytes"  
    big_array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    user_data = {name: "Alice", age: 30, email: "alice@example.com"}


## What This Means for Your Code

### Variable Assignment
    a = "hello"  
    b = a # b now points to the same object as a  

Both `a` and `b` point to the same string object in memory.

### Mutation vs Reassignment

- Mutation - changes the object itself  
 a = "hello"  
 b = a  
 a << " world" # Both a and b now show "hello world"  

- Reassignment - points to a new object  
 a = "hello"  
 b = a  
 a = "goodbye" # a points to new object, b still points to "hello"  



### Why This Matters
- **Memory efficiency:** Multiple variables can point to the same object
- **Performance:** Copying variables is fast (just copying a reference)
- **Mutation effects:** Changing an object affects all variables pointing to it

## Immutable Objects

Some Ruby objects cannot be changed (mutated):
- **Numbers:** `1`, `3.14`
- **Symbols:** `:name`, `:status`
- **Booleans:** `true`, `false`
- **nil**

For these objects, you can only reassign the variable to point to a different object.

## Memory Management

Ruby automatically manages memory through **garbage collection**:
- When no variables point to an object, it becomes eligible for cleanup
- The garbage collector frees unused memory automatically
- You don't need to manually free memory (unlike C/C++)

## Key Takeaways

1. **Variables store references, not values**
2. **Small data may be embedded directly in the slot**
3. **Large data lives elsewhere with a pointer in the slot**
4. **Multiple variables can point to the same object**
5. **Mutating an object affects all variables pointing to it**
6. **Ruby handles memory management automatically**

---

*Understanding this concept helps you write more efficient Ruby code and avoid common pitfalls with object mutation.*
