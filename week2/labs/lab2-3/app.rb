require 'sinatra'

get "/" do
  erb :"index.html", layout: :"layout.html"
end

get "/trello" do
  my_items = [
    {name: "Learn Strings", done: true},
    {name: "Learn Hash", done: true},
    {name: "Learn Variables", done: false},
    {name: "Learn Methods", done: true},
    {name: "Learn ERB", done: false},
    {name: "Learn Partials", done: false}
  ]
  erb :"trello.html", layout: :"layout.html", locals: {items: my_items}
end

get "/about" do
  name = "Oscar"
  erb :"about.html", locals: {name: name}, layout: :"layout.html"
end
