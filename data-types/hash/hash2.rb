my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}
puts my_hash
# another way to create an empty hash
my_hash = Hash.new
puts my_hash               #=> {}
