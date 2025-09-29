# THEORY ABOUT OVERRIDING to_s
#
# 1. By default, every Ruby object inherits a `to_s` method from Object class.
#    Example: If you create a new object and try to print it with puts,
#    Ruby calls `to_s` internally.
#
#    Example:
#    obj = Object.new
#    puts obj   # => "#<Object:0x0000000100abcd>"
#
#    It shows the object's class name and its unique object ID (memory address representation).
#
# 2. Overriding `to_s` means writing your own version of the `to_s` method
#    inside a class to control how objects of that class are represented as strings.
#
# 3. IMPORTANT RULE: `to_s` **must always return a String**.
#    - If you return ANYTHING else (Integer, Array, Hash, etc.),
#      Ruby will try the inheritance chain (back to Object#to_s).
#    - This means your custom string representation will be ignored.
#
# 4. Implicit calls to `to_s`:
#    - puts object   # calls object.to_s
#    - "Hello #{object}"   # string interpolation also calls object.to_s
#
# 5. Limitation: A custom `to_s` of a class only applies to its objects.
#    If you print an attribute of that object, the attribute’s class decides
#    what its `to_s` looks like (not your custom class).
#
# -------------------------------------------------------------------
# PRACTICAL EXAMPLES
# -------------------------------------------------------------------

# Example 1: BAD - Returning an Integer (not allowed for to_s)

class Foo
  def to_s
    37   # This is not a String
  end
end

foo = Foo.new
puts "Example 1: "
puts foo
puts "foo is #{foo}"