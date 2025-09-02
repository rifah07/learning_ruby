school = {
  grade_9: {
    math: %w[Elsa Anna],
    science: %w[John David]
  },

  grade_10: {
    math: %w[Mark Jenna],
    science: %w[Rita John]
  }
}

puts 'The full nested array: '
pp school

puts "The students who study in Grade 9 and choose math are: #{school[:grade_9][:math]}"
puts "The students who study in Grade 10 and studies science are: #{school[:grade_10][:science]}"
