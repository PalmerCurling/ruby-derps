ten_things = "Apples Oranges Crows Telephone Light Sugar"
puts "idiot, thats not 10 things."

stuff = ten_things.split(' ')
more_stuff = %w(Day Night SOng Frisbee Corn Banana Girl Boy)

while stuff.length != 10
	next_one = more_stuff.pop()
	puts "Adding: #{next_one}"
	stuff.push(next_one)
	puts "there is #{stuff.length} items now."
end

puts "fixed it."
puts "#{stuff}"

puts "lets do things with stuff."

puts stuff[1]
puts stuff[-1]
puts stuff.pop()
puts stuff.join(' ')
puts stuff.values_at(3,5).join('#')
