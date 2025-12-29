# frozen_string_literal: true

#!/usr/bin/env ruby
# IO Playground for Windows

require 'stringio'
require 'tempfile'

puts "=" * 60
puts "🛝 RUBY IO PLAYGROUND"
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

# 2. CREATING IO OBJECTS
puts "\n2️⃣ CREATING IO OBJECTS"

stdout_io = IO.new(1, 'w')
stdout_io.puts "   ✅ WINDOWS: IO.new(1, 'w').puts → Hello from IO!"

# ════════════════════════════════════════════════════════════════
# ❌ UNIX ONLY:
# stdout_io = IO.new(1)
# stdout_io.puts "   UNIX: IO.new(1).puts → Hello from IO!"
# ════════════════════════════════════════════════════════════════

begin
  dev_null_file = File.open(File::NULL, 'w+')
  dev_null_file.puts "   This goes to NUL → (nothing visible)"
  dev_null_file.rewind
  puts "   dev_null_file.gets → #{dev_null_file.gets.inspect}"
  dev_null_file.close
  puts "   ✅ WINDOWS: File::NULL works!"
rescue => e
  puts "   ⚠️  Null test failed: #{e.message}"
end

# ════════════════════════════════════════════════════════════════
# ❌ UNIX ONLY:
# null_fd = IO.sysopen('/dev/null', 'w+')
# dev_null = IO.new(null_fd)
# ════════════════════════════════════════════════════════════════

# 3. FILE POSITION & REWIND
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

# 4. STRINGIO
puts "\n4️⃣ STRINGIO (WINDOWS BULLETPROOF)"

puts "   ✅ Write-only StringIO (using string method):"
write_io = StringIO.new(nil, "w")
write_io.puts "Hello from StringIO!"
write_io.puts "Line 2"
puts "   ✅ Wrote #{write_io.size} bytes successfully!"
puts "   ✅ string: #{write_io.string}"  # ✅ USE .string instead of .read()

puts "\n   ✅ Read-only StringIO:"
read_io = StringIO.new("Read-only content\n")
puts "   #{read_io.gets.chomp}"
puts "   eof?=#{read_io.eof?}"

# ════════════════════════════════════════════════════════════════
# ❌ UNIX ONLY:
# string_io = StringIO.new("Hello\nWorld\n", "r+")
# ════════════════════════════════════════════════════════════════

# 5. TEMPFILe
puts "\n5️⃣ TEMPFILe"
temp = Tempfile.new(['io-play', '.txt'])
temp.write("Temp file content\n")
temp.rewind
puts "   Tempfile path: #{temp.path}"
puts "   Content: #{temp.read}"
temp.close!
temp.unlink

# 6. IO INJECTION - FIXED
puts "\n6️⃣ IO INJECTION"
class PrintableTask
  def initialize(io = $stdout)
    @io = io
  end

  def run
    @io.puts "🚀 Task started"
    @io.puts "📝 Doing work..."
    @io.puts "✅ Task complete"
  end
end

puts "   Normal usage:"
PrintableTask.new.run

captured = StringIO.new(nil, "w")
PrintableTask.new(captured).run
puts "   ✅ Captured #{captured.size} bytes!"
puts "   ✅ Output: #{captured.string}"  # ✅ USE .string instead of .read()

# 7. POSITION OVERWRITING
puts "\n7️⃣ POSITION OVERWRITING"
rw_file = Tempfile.new('overwrite-test')
rw_file.puts "First line"
rw_file.puts "Second line"
rw_file.rewind

puts "   Original:"
puts "   #{rw_file.gets.chomp}"
puts "   #{rw_file.gets.chomp}"

rw_file.pos = 6
rw_file.puts "MIDDLE"
rw_file.rewind
puts "   Overwritten: #{rw_file.read}"
rw_file.close!
rw_file.unlink

puts "\n" + "=" * 60
puts "🎉 WINDOWS PERFECT! No more StringIO errors! 🚀"
puts "=" * 60
