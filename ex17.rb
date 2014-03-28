from_file, to_file = ARGV
script = $0

puts "copying from #{from_file} to #{to_file}"

input = File.open(from_file)
indata = input.read()

puts "input file is #{indata.length} bytes long"

puts "does the output file exist? #{File.exists? to_file}"
puts "ready, hit return to continue, CTRL+C to abort."
STDIN.gets

output = File.open(to_file, 'w')
output.write(indata)

puts "fin."

output.close()
input.close()
