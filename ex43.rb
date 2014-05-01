class Game
	def initialize(start)
		@quips = [
			"You died. You Suck.",
			"Epic Fail.",
			"n00b",
			"My puppy is better at this game than you..."
		]
		@start = start
	end

	def prompt()
		print "> "
	end

	def play()
		next_room = @start

		while true
			puts "\n--------"
			room = method(next_room)
			next_room = room.call()
		end
	end

	def death()
		puts @quips[rand(@quips.length())]
		Process.exit(1)
	end

	def central_corridor()
		puts "Kuyou's forces have captured you and your friends."
		puts "You are the only one able to move still."
		puts "You must free them all before Kuyou or the rest of"
		puts "the Student Police find and kill you."
		puts "\n"
		puts "You're running down the central corridor of the Student"
		puts "Police prison dungeon. A spider woman pops out and is about"
		puts "to shoot you with her silk threads."

		prompt()
		action = gets.chomp()

		if action == "punch"
			puts "She's a heck of a lot faster than you are on the draw."
			puts "You're dead! and so are your friends"
			return :death

		elsif action == "dodge"
			puts "...she is still faster than you. You're dead!"
			puts "And so are your friends."
			return :death

		elsif action == "smile"
			puts "She blushes and is distracted. You sneak past her and"
			puts "knock her out. hooray. grab Moka and head to the roof!"
			return :rooftop

		else
			puts "That is not an option."
			return :central_corridor
		end
	end

	def rooftop()
		puts "You find Moka and run to the roof in a vain attempt to lose"
		puts "Kuyou. He follows you up there, as Ruby and Kurumu carry"
		puts "Mizore and Yukari up to the roof as well. 
