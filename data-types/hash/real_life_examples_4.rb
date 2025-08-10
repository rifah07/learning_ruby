#  Social Media Analytics
posts =
[
 {
    id: 1001,
    user: "design_lover",
    content: "Amazing UI inspiration",
    likes: 189,
    shares: 67,
    comments: 12,
    timestamp: "2025-08-10 09:15:00",
    hashtags: ["#design", "#ui", "#inspiration"]
  },
  {
    id: 1002,
    user: "the_ruby_dev",
    content: "Exploring the beauty of Ruby",
    likes: 245,
    shares: 89,
    comments: 34,
    timestamp: "2025-08-10 10:30:00",
    hashtags: ["#ruby", "#programming", "#devlife"]
  },
  {
    id: 1003,
    user: "artistic_soul",
    content: "Capturing moments through art",
    likes: 312,
    shares: 120,
    comments: 45,
    timestamp: "2025-08-10 11:45:00",
    hashtags: ["#art", "#creativity", "#inspiration"]
  }
]

# Find viral posts (high engagement)
viral_posts = posts.select do |post|
  engagement = post[:likes] + post[:shares] + post[:comments]
  engagement > 300
end

puts "Viral posts: "
p viral_posts.map { |post| post[:content] }
puts "Total viral posts: #{viral_posts.size}"

# Engagement report
posts.each do |post|
  total_engagement = post[:likes] + post[:shares] + post[:comments]
  puts "Post ID: #{post[:id]}, Total Engagement: #{total_engagement}"
end