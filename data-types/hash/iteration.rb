pearson = {
  name: "Anna",
  age: 26,
  hair: "brown",
  height: "5'6"
}

pearson.each do |key, value|
  puts "The #{key} is #{value}."
end

# multiple values
# array of hashes
pearson_2 = [{
  name: "Elsa",
  age: 28,
  hair: "blonde",
  height: "5'7"
},  {
  name: "Rima",
  age: 26,
  hair: "brown",
  height: "5'6"
}]
 puts "The hashes are: "
 p pearson
 p pearson_2

 person_all = [pearson] + pearson_2
 puts "The merged hash is: "
 p person_all