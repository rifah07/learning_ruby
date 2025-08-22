# Counting favorite programming languages from survey responses
response_languages = ["Python", "JavaScript", "Ruby", "Python", "JavaScript", "Python", "Go"]

language_counts = response_languages.reduce (Hash.new(0)) do |acc, language|
  acc[language] += 1
  acc
end

p language_counts
