require 'colorize'

puts "Hey I am in test"
puts "This ".colorize(:blue)+"should ".colorize(:red)+"be ".colorize(:green)+"colorful".blue.on_red.blink

