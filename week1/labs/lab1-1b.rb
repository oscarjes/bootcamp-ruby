numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#numbers.each do |n|
  #    puts "number: #{n}"
  #end
  
  #numbers.each do |n|
    #    if n > 5
    #    puts "number: #{n}"
    #    end
    #end
    
numbers << 11

#puts numbers

numbers.push(12)

#puts numbers

#puts numbers[-1]

reversed_numbers = numbers.reverse

#puts "numbers: #{numbers}"
#puts "reversed numbers: #{reversed_numbers}"

big_numbers = [100, 200, 300, 400]

all_numbers = numbers + big_numbers

#puts "all numbers: #{all_numbers}"

numbers_sorted = all_numbers.sort.reverse

#puts "sorted numbers: #{numbers_sorted}"

def full_name(first_name, middle_name, last_name)
  puts "#{first_name} #{middle_name} #{last_name}"
end

#puts full_name("harley", "michael", "davidson")

def say_hi(name)
  puts "Yo long time no see, #{name.capitalize}!!!"
end

#puts say_hi("john")

def total(numbers)
  total = 0
  numbers.each do |n|
    total = total + n
  end
  total
end

#puts total([1,2,3])



def bigger(number1, number2)
  if number1 > number2
    number1
  else
    number2
  end
end

#puts bigger(9,3)

def absolute(number)
  if number < 0
    absolute_number = number * -1
    absolute_number
  else
    number
  end
end

#puts absolute(500)

def are_you_ok?(answer)
  if answer == "OK"
    "Awesome"
  else
    "Oh no. You're not OK?"
  end
end

puts "Hey, how are you?"
answer = gets.chomp
puts are_you_ok?(answer)
