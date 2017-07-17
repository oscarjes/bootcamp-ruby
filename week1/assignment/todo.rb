require 'colorize'
require_relative "item"
require_relative "list"

class Todo
  attr_accessor :list, :lines
  def initialize(filename = "todo.md")
    @filename = filename
    @list = List.new("Bucket List")
  end

  def load_data
    @lines = File.read("todo.md").split("\n")
    @lines.each do |line|
      @list.add(Item.new_from_line(line))
    end
  end

  def display
    @list.display
  end

  def display_done
    @list.display_done
  end

  def display_undone
    @list.display_undone
  end

  def display_all
    @list.display
  end

  def save
    @save
  end

  def prompt
    puts ("-" * 100).colorize(:blue)
    puts "// Enter the number of the task you'd like to mark as done/undone!".colorize(:blue)
    puts "// Add a new task by typing 'add' or remove an existing task by typing 'remove'.".colorize(:blue)
    puts "// Type 'done' or 'undone' to see lists of done/not done tasks & 'all' to see the full list.".colorize(:blue)
    puts "// Type 'save' to save your list. It will also be auto-saved when you exit the app.".colorize(:blue)
    puts "// Type 'exit' to quit the app.".colorize(:blue)
    input_index = gets.chomp
    
    if input_index == "exit"
      puts "Goodbye: come back when you've completed more bucket list tasks!".colorize(:red)
      "exit".colorize(:red)

    elsif input_index == "done"
      display_done

    elsif input_index == "undone"
      display_undone

    elsif input_index == "all"
      display_all

    elsif input_index == "save"
      save
      puts "Your file has been saved.".colorize(:red)
      display

    elsif input_index == "add"
      puts "Please type in the task you would like to add:".colorize(:green)
      new_task = gets.chomp
      puts "Ok, I've added the task #{new_task} to your bucket list".colorize(:green)
      @list.add(Item.new_from_prompt(new_task))
      display

    elsif input_index == "remove"
      puts "Please type in the number of the task you would like to remove:".colorize(:red)
      remove_task = gets.chomp
      puts "Ok, I have removed the task #{remove_task} from your bucket list".colorize(:red)
      @list.items.delete_at((remove_task.to_i)-1)
      display

    elsif @list.items[(input_index.to_i)-1].done? == false
      puts "Ok, I marked task number #{input_index} as done:".colorize(:green)
      @list.mark_done_at!(input_index.to_i - 1)
      display

    else @list.items[(input_index.to_i)-1].done? == true
      puts "Ok, I marked task number #{input_index} as undone:".colorize(:red)
      @list.mark_undone_at!(input_index.to_i - 1)
      display
    end
  end

  def save
    File.open("todo.md", "w") do |f|
      @list.items.map do |item|
        if item.done?
          f.puts "- [x] #{item.name}"
        else
          f.puts "- [ ] #{item.name}"
        end
      end
    end
  end
end

@todo = Todo.new("todo.md")
@todo.load_data
@todo.display
loop do
  if @todo.prompt == "exit".colorize(:red)
    @todo.save
    break
  end
end