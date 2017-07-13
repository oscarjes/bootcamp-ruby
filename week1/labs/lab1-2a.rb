#.....::::: Milestone A1 :::::.....

# Create an array called singers that contain the names of the singers you like.
singers = ["backstreet boys", "nsync", "spice girls"]
 
# - How do you print the first element in that array?
puts singers[0]
# - How do you print the last element in that array?
puts singers[-1]
# - How do you print the middle element in that array?
puts singers[1]

#.....::::: Milestone A2 :::::.....

@rating = {
  "backstreet boys" => 10,
  "nsync" => 2,
  "spice girls" => 9
 }

# puts rating["backstreet boys"]
# puts rating["nsync"]
# puts rating["spice girls"]

# puts "Rating is: #{rating}"

# p rating.to_a
# p rating.to_a.to_h

# p rating.keys
# p rating.to_a.map{|e| e.first}

#.....::::: Milestone A3 :::::.....

def better_singer(name_one, name_two)
  if @rating[name_one] > @rating [name_two]
    name_one
  else
    name_two
  end
end

puts better_singer("backstreet boys", "nsync")

# def total_rating(some_rating)
#     total = 0
#     some_rating.each do |rate|
#     total += rate[1]
#     end
#   total
# end

def total_rating(some_rating)
    total = 0
    some_rating.values.each do |n|
      total += n
    end
    total
end

puts total_rating(@rating)