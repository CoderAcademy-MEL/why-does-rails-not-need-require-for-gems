def hello_world
  puts "using faker without a require in this file"
  puts Faker::Internet.email
  puts "using colorize without a require in this file"
  puts "hello world".colorize(:blue)
end