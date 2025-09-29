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