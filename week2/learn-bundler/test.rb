require 'colorize'
require 'terminal-table'

puts "Hey I am in test"
puts "This ".colorize(:blue)+"should ".colorize(:red)+"be ".colorize(:green)+"colorful".blue.on_red.blink

rows = []
rows << ['One', 1]
rows << ['Two', 2]
rows << ['Three', 3]
table = Terminal::Table.new(title: "Title".colorize(:red), headings: ['Word', 'Number'], rows: rows, style: {:width => 40, :padding_left => 3, :border_x => "=", :border_i => "x"})
puts table