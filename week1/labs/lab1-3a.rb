###################
# Task 1: define a class Flower that takes a name and a color
# - add a writer method to set price for that flower
###################

class Flower
  def initialize(name, color)
    @color = color
    @name = name
  end

  def price=(value)
    @price = value
  end
end

# TEST:

my_flower = Flower.new("roses", "red")
my_flower.price = 10

your_flower = Flower.new("violets", "blue")
your_flower.price = 11

# add your own tests

#my_flower.price #-> error because I (purposefully) didn't add a reader

her_flower = Flower.new("tulips", "purple")
her_flower.price = 79

###################
# Task 2: add a to_sentence method inside the class
# NOTE: you can "open" the class again and write def to_sentence inside it
###################

class Flower
  def to_sentence
    "#{@name} are #{@color}"
  end
end

@my_flower = my_flower

my_flower.to_sentence # => "roses are red"
your_flower.to_sentence # => "violets are blue"

###################
# Task 3: write a compare method that takes another flower and compare
###################

class Flower
  def compare(another_flower)
    # your code here
    "SOMETHING"
  end
end

puts "Hey I am cheaper!" == " + my_flower.compare(your_flower)