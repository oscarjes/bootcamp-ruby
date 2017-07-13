###########################
# define a total method that add all the numbers in an array
###########################
puts "Task 1:"

def total(numbers)
  # Your code here
  # ...
end

# hey i'm giving you a free method to check if total is correct :)
def test_total(numbers, expected)
  # calculate
  result = total(numbers)
  
  # check
  if result == expected
    puts "CORRECT! total(#{numbers.inspect}) = #{result}"
  else
    puts "WRONG! total(#{numbers.inspect}) is #{result}? Why not #{result}? :'("
  end
end

# now when you click Run, you'll see if your total method is correct or not
test_total([], 0)
test_total([123], 123)
test_total([1, 2, 3], 6)
test_total([10, -10, 99], 99)
test_total((1..10).to_a, 55)