def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "you have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "dats a party, yo."
end
puts "hardcoded"
cheese_and_crackers(20, 30)

puts "or with with variables."
cheese = 10
crackers = 50
cheese_and_crackers(cheese, crackers)

puts "math."
cheese_and_crackers(10+20, 5+6)

puts "fuuuuuuuusioooooooooooooon."
cheese_and_crackers(cheese + 100, crackers + 1000)
