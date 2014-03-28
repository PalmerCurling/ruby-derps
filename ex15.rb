filename = ARGV.first

prompt = "> "
txt = File.open(filename)

puts "here is your file: #{filename}"
puts txt.read()

puts "please put it in again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()
