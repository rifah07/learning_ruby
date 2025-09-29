# Memory Trick for Overriding to_s
#
# Mnemonic:
# "to_s Must Sing, Not Show"
#
# Explanation:
# The name `to_s` literally means "to string". It reminds you that
# this method should always *sing* (return a string).
# If it doesn't sing (return a string), Ruby ignores it and shows
# (falls back to Object#to_s default printing).
#
# Analogy:
# Imagine Ruby asks your object, "Please sing me a song (a string) so I can
# share it with others (print or interpolate)."
# If your object hums a number or shows a painting (returns an integer or hash),
# Ruby says, "That's not a song! I'll ask the parent to sing instead."
#
# So always program your `to_s` method to sing a string song!
#
# This way, wherever Ruby expects a string representation--puts, "#{obj}", etc.--your object will shine.

# THEORY ABOUT OVERRIDING to_s
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
puts foo # Ruby ignores our to_s (since 37 is not a string) => prints Object#to_s result: #<Foo:0x...>
puts "foo is #{foo}"
puts "-" * 50

# Example 2: GOOD - Returning a String
class FooFixed
  def to_s
    "37"
  end
end

foo_fixed = FooFixed.new
puts "Example 2: "
puts foo_fixed # => "37"
puts "foo_fixed is #{foo_fixed}" # => "foo_fixed is 37"
puts "-" * 50

# Example 3: Custom class with attribute
class Bar
  attr_reader :xyz

  def initialize
    @xyz = {a: 1, b: 2}
  end

  # Overriding to_s for the whole Bar object
  def to_s
    "I am a Bar Object"
  end
end

bar = Bar.new
puts "Example 3: "
puts bar  # => "I am a Bar object!" (our custom to_s is used)
puts bar.xyz   # => "{:a=>1, :b=>2}" (Hash#to_s is used, NOT Bar#to_s)
puts "bar details #{bar}"  # => "bar details: I am a Bar object!"