require 'sinatra'

get "/" do
  erb :"index.html", layout: :"layout.html"
end

get "/trello" do
  erb :"trello.html", layout: :"layout.html"
end

get "/about" do
  name = "Oscar"
  erb :"about.html", locals: {name: name}, layout: :"layout.html"
end
