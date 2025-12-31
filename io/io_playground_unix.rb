# frozen_string_literal: true

#!/usr/bin/env ruby
# IO Playground for UNIX/Linux/Mac

require 'stringio'
require 'tempfile'
require 'socket'

puts "=" * 60
puts "🛝 RUBY IO PLAYGROUND (UNIX/LINUX/MAC)"
puts "=" * 60

# 1. STANDARD STREAMS
puts "\n1️⃣ STANDARD STREAMS"
puts "   $stdout: #{$stdout.inspect}"
puts "   $stderr: #{$stderr.inspect}"
puts "   $stdin:  #{$stdin.inspect}"

begin
  $stdout.gets
rescue IOError => e
  puts "   ✅ $stdout.gets → IOError: #{e.message}"
end

puts "   ✅ puts 'Hello!' →"
puts "Hello!"

# 2. CREATING IO OBJECTS - UNIX VERSION
puts "\n2️⃣ CREATING IO OBJECTS (UNIX)"

# ✅ UNIX: Works WITHOUT explicit mode
stdout_io = IO.new(1)
stdout_io.puts "   ✅ UNIX: IO.new(1).puts → Hello from IO! (no mode needed)"
stdout_io.close

# ✅ UNIX: /dev/null with IO.sysopen
null_fd = IO.sysopen('/dev/null', 'w+')
dev_null = IO.new(null_fd)
dev_null.puts "   This goes to /dev/null → (nothing visible)"
puts "   dev_null.gets → #{dev_null.gets.inspect}"
dev_null.close
puts "   ✅ UNIX: /dev/null + IO.sysopen works!"

# ════════════════════════════════════════════════════════════════
# ❌ WINDOWS ONLY (commented for Unix):
# dev_null_file = File.open(File::NULL, 'w+')
# stdout_io = IO.new(1, 'w')
# ════════════════════════════════════════════════════════════════
