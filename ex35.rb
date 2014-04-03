def prompt()
	print "> "
end

def gold_room()
	puts "This room is full of gold! How much you wanna try and haul?"
	prompt; next_move = gets.chomp
	if next_move.include? "0" or next_move.include? "1"
		how_much = next_move.to_i()
	else
		dead("dude. type a number. plz.")
	end

	if how_much < 50
		puts "you not so greedy existance. congrats. you pass. for now."
		Process.exit(0)
	else
		dead("Greedy (pack) rat! Face Erebos's rath!")
	end
end

def bear_room()
	puts "There is a bear in here."
	puts "The bear has a bunchton of honey. and honeys."
	puts "He's sitting in front of a nother door."
	puts "How are you going to move the bear?"
	bear_moved = false

	while true
		next_move = " "
		prompt; next_move = gets.chomp

		if next_move == "take honey"
			dead("The bear looks at you, slaps your face off, and feeds you to his honies.")
		elsif next_move == "taunt bear" and not bear_moved
			puts "The bear has moved. Now you shall pass."
			bear_moved = true
		elsif next_move == "taunt bear" and bear_moved
			dead("The bear is pissed. It eats your leg and feeds the rest of you to his honies.")
		elsif next_move == "open door" and bear_moved
			gold_room()
		else
			puts "WAT?????!???!?!!!!?"
		end
	end
end

def cthulhu_room()
	puts "Here dwells the great Cthulhu."
	puts "You cannot handle Cthulhu's awesomeness and go insane."
	puts "Do you eat your own head, or flee for your life?"

	prompt; next_move =gets.chomp

	if next_move.include? "flee"
		start()
	elsif next_move.include? "head"
		dead("om nom nom")
	else
		cthulhu_room()
	end
end

def dead(why)
	puts "#{why} Good Job!"
	Process.exit(0)
end

def start()
	puts "You wake up and find yourself in a dark room."
	puts "There is a door to the left and to the right from you."
	puts "Which do you take?"

	prompt; next_move = gets.chomp

	if next_move == "left"
		bear_room()
	elsif next_move == "right"
		cthulhu_room()
	else
		dead("Go ahead, starve! See if I care.")
	end
end

start()

