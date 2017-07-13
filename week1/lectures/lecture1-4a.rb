alex = {age: 21, name: "alex"}
bob = {age: 21, name: "bob"}
carey = {age: 21, name: "carey"}

people = [alex, bob, carey]
people[0][:name] = #=> "alex"
people[0][:name] = "alexander" #=> "alex"
people[0][:name] = #=> "alex"
people[0][:full_name] = "alex smith" # => starts getting confusing between name vs. fullname

class Person
  def name
    puts "calling name"
    "alex"
  end
end

