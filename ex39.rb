states = {
	'Oregon' => 'OR',
	'Georgia' => 'GA',
	'Florida' => 'FL',
	'Connecticut' => 'CT'
	'New York' => 'NY',
	'Virginia' => 'VA',
	'California' => 'CA'
}

cities = {
	'CA' => 'San Francisco',
	'GA' => 'Atlanta',
	'FL' => 'Sunny Isles Beach'
}

cities['NY'] = 'New York'
cities['VA'] = 'Richmond'

puts '-' * 10
puts "NY State has: ", cities['NY']
puts "GA State has: ", cities['GA']

puts '-' * 10
puts "Florida's abbreviation is: ", states['Florida']
puts "Connecticut's abbreviation is: ", states['Connecticut']

puts '-' * 10
puts "California has: ", cities[states['California']]
puts "Florida has: ", cities[states['Florida']]

puts '-' * 10
for state, abbrev in states
	puts "%s is abbreviated %s" % [abbrev, city]
end

puts '-' * 10
for abbrev, city in cities
	puts "%s state is abbreviated %s and has city %s" % [state, abbrev, cities[abbrev]]
end

puts '-' * 10
