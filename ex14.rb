user = ARGV.first
prompt = '> '

puts "Hi, #{user}. I am the #{$0} script."
puts "I would like to ask you a few questions."
puts "Do you like me #{user}?"
print prompt
likes = STDIN.gets.chomp()

puts "Where do you live, #{user}?"
print prompt
lives = STDIN.gets.chomp()

puts "What kind of computer do you have, #{user}?"
print prompt
computer = STDIN.gets.chomp()

puts <<MESSAGE
You answered the following;
About liking me: #{likes}. Good to know.
Location: #{lives}. Now I can find you.
Computer: #{computer}. Now I know the drivers needed to take it ov- err fix it for you.
MESSAGE
