hours_day = 24
hours_month = 24 * 30
hours_year = hours_month * 12

puts "there are #{hours_year} hours in a year"

minutes_hour = 60
minutes_day = 60 * 24
minutes_month = minutes_day * 30
minutes_year = minutes_month * 12
minutes_decade = minutes_year * 10

puts "there are #{minutes_decade} minutes in a decade"

age = 29
seconds_minute = 60
seconds_hour = seconds_minute * 60
seconds_day = seconds_hour * 24
seconds_month = seconds_day * 30
seconds_year = seconds_month * 12
age_seconds = age * seconds_year

puts "I am #{age_seconds} seconds old"

bob_seconds = 1246000000
bob_minutes = bob_seconds / 60
bob_hours = bob_minutes / 60
bob_days = bob_hours / 24
bob_months = bob_days / 30
bob_years = bob_months / 12

puts "Bob is #{bob_years} years old"


print "Hello world"
puts "Hello world"

name = "Oscar Jesionek"
puts name

puts (name + " ") * 5


name = "Oscar"
puts name * 50

first_name = "Oscar"
last_name = "Jesionek"
full_name = first_name + " " + last_name

puts full_name

puts "What's your name?"
name = gets
puts "Welcome, #{name}"

puts "What is your first name?"
first_name = gets
puts "What is your last name?"
last_name = gets
puts "Your full name is #{first_name} #{last_name}"

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Your full name is #{first_name.downcase.capitalize} #{last_name.downcase.capitalize}"