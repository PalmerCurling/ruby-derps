the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

for number in the_count
	puts "This is the count: #{number}"
end

fruits.each do |fruit|
	puts "A fruit of type #{fruit}"
end

for i in change
	puts "i gots #{i}"
end

elements = []
for i in (0..5)
	puts "adding #{i} to elements"
	elements.push(i)
end

for i in elements
	puts "Element == #{i}"
end
