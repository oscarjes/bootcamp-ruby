require_relative "item"

class List
  attr_reader :lines

  def initialize(filename="todo.md")
    @lines = File.read(filename).split("\n")
  end

  def display_html
    html = "<ul>"
      @lines.each do |task|
        html << Item.new_from_line(task).transform_html
      end
    html << "<ul>"
  end
end