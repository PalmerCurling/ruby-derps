filename = ARGV.first
script = $0

puts "we are going to erase #{filename}."
puts "if you do not want this, please press ctrl+c (^C)."
puts "If you do, please press RETURN."

print"? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file. Goodbye, Dave."
target.truncate(target.size)

puts "Now, we will be requesting three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "Writing to file..."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "Closing file..."
target.close()
