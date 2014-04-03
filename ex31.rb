def prompt
	print"> "
end

puts "you enter a dark room with two doors. Do you go through door 1 or 2?"

prompt; door = gets.chomp

if door == "1"
	puts "There's a giant bear eating a cheesecake What do you do?"
	puts "1. Take the cake."
	puts "2. Scream at the bear."

	prompt; bear = gets.chomp

	if bear == "1"
		puts "The bear eats your face off. Nice job, my friend."
	elsif bear == "2"
		puts "The bear eats your legs off. Have fun with that."
	else
		puts "#{bear} seems reasonable. Bear runs away."
	end

elsif door == "2"
	puts "You stare into the endless abyss of Cthuhlu's retina."
	puts "1. The Mowglies stare back. All of them. Even the rest of the collective."
	puts "2. Help, I'm Alive."
	puts "3. Yodeling Twinkies seeking blood of Tastykakes."

	prompt; insanity = gets.chomp

	if insanity == "1"
		puts "You are now one of the collective. There is no individuality here, only Mowglies."
	elsif insanity == "2"
		puts "And now you are not. Congrats."
	elsif insanity == "3"
		puts "You are now a Tastykake. And now you're the filling of a Twinkie."
	else
		puts "DEATH. By ceasing to exist."
	end
else
	puts "You fall into a hole. and land on a Sonic the Hedgehog-esque spike. You are dead. Very Dead."
end
