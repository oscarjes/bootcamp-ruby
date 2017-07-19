#.....::::: Milestone C1 - Representing TODO tasks :::::.....

# 1. Define a my_tasks local variable that is an array of 10 different tasks. 
#Try to use a few different priority numbers for the tasks.

my_tasks = [
  {name: "wake up", priority: 1},
  {name: "toilet", priority: 9},
  {name: "brush teeth", priority: 8},
  {name: "drink tea", priority: 7},
  {name: "meditate", priority: 6},
  {name: "shower", priority: 3},
  {name: "get dressed", priority: 4},
  {name: "eat breakfast", priority: 10},
  {name: "call uber", priority: 2},
  {name: "go to work", priority: 1}
]

# def most_important(tasks)
#   top_task = tasks[0]
#   tasks.each do |item|
#     if item[:priority] > top_task[:priority]
#       top_task = item
#       end
#     end
#   top_task
# end

# puts most_important(my_tasks)

# 3. Define method sorted that takes a list of tasks and returns a new list of tasks 
#that have the same tasks but in the sorted order: most important tasks first:

# def sorted(tasks)
#   tasks.sort_by {|task| task[:priority]}.reverse
# end

# my_sorted_tasks = sorted(my_tasks)
# puts my_sorted_tasks

# 4. Define method names_only that returns the names of all the tasks and ignore the priorities:

#solution1:
# def names_only(tasks)
#   tasks.map {|task| task[:name]}
# end

# solution2:
# def names_only(tasks)
#   tasks.map do |task|
#     task[:name]
#   end
# end

#puts "Task names: #{names_only(my_tasks)}"

# 5. Define a method to_task which takes a task name and a priority and return a task hash:

# def to_task(name, priority = 1)
#   {name: name, priority: priority}
# end

# to_task("implement to_task") # => {"name" => "implement to_task", "priority" => 1}

#.....::::: Milestone C2 - Hash to Array to Hash :::::.....

#1. Use each_with_index, define a to_tasks method so that it's easier to create multiple tasks. 
#Notice that it's easier to come up with 10 tasks now compared to my_tasks in Milestone C1?

# def to_tasks(names)
#   name_hash = []
#   names.each_with_index do |item, index|
#    name_hash << {name: item, priority: index + 1}
#   end
#   name_hash
# end
    
# to_tasks(["learn symbol", "review string"])
# # should return:
# [{"name" => "learn symbol", "priority" => 1},
#  {"name" => "review string", "priority" => 2}]

#2. Use map.with_index and improve the to_tasks method. HINT: you only need 1 line of code.

# #option1:
#  def to_tasks(names)
#   names.map.with_index do |item, index|
#   {name: item, priority: index + 1}
#   end
# end

# #option2:
# def to_tasks(names)
#   names.map.with_index {|item, index| {name: item, priority: index + 1} }
# end
    
# to_tasks(["learn symbol", "review string"])
# # should return:
# [{"name" => "learn symbol", "priority" => 1},
#  {"name" => "review string", "priority" => 2}]

#3. However, we now want to create 10 tasks with random priority between 1-10, not just 1-10

# #option 1:
# def to_tasks_random(names)
#   names.map {|item| {name: item, priority: Random.new.rand(1..10)} }
# end

# #option2:
# def to_tasks_random(names)
#   names.map do |item|
#   {name: item, priority: Random.new.rand(1..10)}
#   end
# end

# to_tasks_random(["learn symbol", "review string"])

# ## OUTPUT
# # to_task:
# [{"name"=>"learn symbol", "priority"=>1}, 
#  {"name"=>"review string", "priority"=>2}, 
#  {"name"=>"take a break", "priority"=>3}, 
#  {"name"=>"make code cleaner", "priority"=>4}]

# # to_task_random:
# to_task_random==
# [{"name"=>"learn symbol", "priority"=>4}, 
#  {"name"=>"review string", "priority"=>2}, 
#  {"name"=>"take a break", "priority"=>1}, 
#  {"name"=>"make code cleaner", "priority"=>3}]

#.....::::: Milestone C3 - String to Symbol :::::.....

# 1. Define a method symbolize that converts an old task that uses string 
# # as keys into a new task that uses symbols as keys

# old_task = {"name" => "learn hash", "priority" => 1}  

# def symbolize(old_task)
#   new_task = {}
#   old_task.each do |key, value|
#     new_task[key.to_sym] = value
#   end
#   new_task
# end

# p symbolize(old_task) #=> {:name => "learn hash", :priority => 1}
# NOTE: the above is the same as {name: "learn hash", priority: 1}

# 2. Define method symbolist that maps a list of “old tasks” to an array of “new tasks”

old_tasks = [{"name"=>"learn symbol", "priority"=>1}, 
 {"name"=>"review string", "priority"=>2}, 
 {"name"=>"take a break", "priority"=>3}, 
 {"name"=>"make code cleaner", "priority"=>4}]

def symbolist(tasks)
  new_tasks = Array.new
  tasks.each do |k|
    new_task = {}
    k.each do |key, value|
      new_task[key.to_sym] = value
    end
    new_tasks << new_task
  end
  new_tasks
end

p symbolist(old_tasks)

# def symbolist(old_tasks)
#   new_tasks = {}
#   old_tasks.map do |key, value|
#     new_tasks[key.to_sym] = value
#   end
# end

# puts symbolist(my_tasks)

#3. Discuss: if you have an array of 100 tasks, what's the advantage of using symbols has task keys versus using strings as task keys.

#Takes up less memory.