 # !! isn't a separate operator in Ruby Instead, it's two consecutive ! operators.
 # The expression !!a is equivalent to writing !(!a).
 # The inner ! converts the value of a to false if it is truthy, or true if a is falsy.
 # The outer ! then flips true to false or false to true.
 # In the end, we end up with a boolean value instead of a truthiness value:

 puts !!3    # 3 is truthy, !3 is false, !false is true

 puts !!nil   #nil is falsy, !nil is true, !true is false
