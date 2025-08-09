# Hashes respond to many of the same methods as arrays do since they both employ Ruby’s Enumerable module.

books = {
    "Infinite Jest" => "David Foster Wallace",
    "The Great Gatsby" => "F. Scott Fitzgerald",
    "Into the Wild" => "Jon Krakauer",
    "1984" => "George Orwell"
}

print "Books hash: "
p books
print "Books titles: "
p books.keys
print "Books authors: "
p books.values

# Merging 2 hashes

hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 300, "c" => 400 }

merged_hash = hash1.merge(hash2)
print "Merged hash: "
p merged_hash
