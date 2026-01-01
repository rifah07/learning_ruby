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

# 3. FILE POSITION & REWIND (cross-platform)
puts "\n3️⃣ FILE POSITION & REWIND"
test_file = Tempfile.new('io-test')
test_file.write("Line 1\nLine 2\nLine 3\n")
test_file.rewind

puts "   File content:"
puts "   #{test_file.gets.chomp}"
puts "   #{test_file.gets.chomp}"
puts "   pos=#{test_file.pos}"
puts "   gets → #{test_file.gets.inspect}"
puts "   eof?=#{test_file.eof?}"

test_file.rewind
puts "   rewind → pos=#{test_file.pos}"
puts "   read all → #{test_file.read}"
test_file.close!
test_file.unlink

# 4. STRINGIO - UNIX r+ MODE WORKS
puts "\n4️⃣ STRINGIO (UNIX r+ MODE)"

# ✅ UNIX: r+ mode works perfectly
string_io = StringIO.new("Hello\nWorld\n", "r+")
puts "   Original: #{string_io.gets.chomp}, #{string_io.gets.chomp}"
puts "   pos=#{string_io.pos}, eof?=#{string_io.eof?}"

string_io.puts "New line!"
string_io.rewind
puts "   ✅ UNIX r+ mode: #{string_io.read}"

# ════════════════════════════════════════════════════════════════
# ❌ WINDOWS ONLY (commented for Unix):
# write_io = StringIO.new(nil, "w")
# puts "   write_io.string"
# ════════════════════════════════════════════════════════════════

# 5. TEMPFILe (cross-platform)
puts "\n5️⃣ TEMPFILe"
temp = Tempfile.new(['io-play', '.txt'])
temp.write("Temp file content\n")
temp.rewind
puts "   Tempfile path: #{temp.path}"
puts "   Content: #{temp.read}"
temp.close!
temp.unlink
