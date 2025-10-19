# map function

def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = %w[a b c]
puts test(a)
