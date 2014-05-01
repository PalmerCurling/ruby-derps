class Song
	def initialize(lyrics)
		@lyrics =lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end
end

happy_bday = Song.new(["Happy birthday to you",
					   "I don't want get sued",
					   "So I'll stop right there."])


bulls_on_parade = Song.new(["They rally around the fmaily",
							"With pockets of shells"])

happy_bday.sing_me_a_song()
puts " "
bulls_on_parade.sing_me_a_song()
