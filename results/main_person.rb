require_relative 'person'

# Instantiating variables 
first_name = "Sue"
last_name = "West"

# Instantiating the class to get an 'object'
user = Person.new

# Invoking the methods using the 'person object'
full_name = user.full_name("Bob", "South")
display_name = user.display_name("Bob", "South")

puts full_name
puts display_name