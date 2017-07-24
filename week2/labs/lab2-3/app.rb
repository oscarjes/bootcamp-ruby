require 'sinatra'

get "/" do
  erb :"index.html", layout: :"layout.html"
end

get "/about" do
  name = "Oscar"
  erb :"about.html", locals: {name: name}, layout: :"layout.html"
end

get "/trello" do
  my_items = Array.new
  list = File.read("todo.md").split("\n")
  list.each do |line|
      my_items << {name: line[6..-1], done: line[3] == "x"}
  end
  erb :"trello.html", layout: :"layout.html", locals: {items: my_items}
end