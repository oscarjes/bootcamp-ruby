require 'colorize'
require_relative "item"

class List
  attr_accessor :items
  def initialize(name, items = [])
    @name = name
    @items = items
  end

  def add(item)
    @items << item
  end

  def display
    puts ("-" * 100).colorize(:light_blue)
    puts "Here is your #{@name}:".colorize(:light_blue)
    puts ("-" * 100).colorize(:light_blue)
    @items.each_with_index do |item, index|
      if item.done?
        puts "- [x] #{item.name} (#{index + 1})".colorize(:green)
      else
        puts "- [ ] #{item.name} (#{index + 1})".colorize(:yellow)
      end
    end
  end

  def display_done
    puts ("-" * 100).colorize(:light_blue)
    puts "Here are your done tasks:".colorize(:light_blue)
    puts ("-" * 100).colorize(:light_blue)
    @items.each_with_index do |item, index|
      if item.done?
        puts "- [x] #{item.name} (#{index + 1})".colorize(:green)
      end
    end
  end

  def display_undone
    puts ("-" * 100).colorize(:light_blue)
    puts "Here are the tasks you haven't done yet:".colorize(:light_blue)
    puts ("-" * 100).colorize(:light_blue)
    @items.each_with_index do |item, index|
      if item.done? == false
        puts "- [ ] #{item.name} (#{index + 1})".colorize(:yellow)
      end
    end
  end

  def mark_done_at!(index)
    item = @items[index]
    item.done = true
  end
  
  def mark_undone_at!(index)
    item = @items[index]
    item.done = false
  end
end