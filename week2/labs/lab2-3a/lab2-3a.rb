require "erb"

# item = {name: "Learn ERB", priority: "High"}

# template = "Task <%= item[:name] %> is <%= item[:priority] %>"

# puts ERB.new(template).result(binding)

items = [
  {name: "Attend lectures", done: true},
  {name: "Do labs", done: true},
  {name: "Build stuff", done: false}
]

template = %{
  <% items.each do |i| %>
    <% if i[:done] %>
      [x] <%= i[:name] %>
    <% else %>
      [ ] <%= i[:name] %>
    <% end %>
  <% end %>
}

puts ERB.new(template).result(binding)