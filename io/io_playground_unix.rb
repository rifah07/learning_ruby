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
