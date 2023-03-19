item = {"name" => "Bread"}
puts item
puts "---"
item["name"]
puts item["name"]
puts "---"
item = {"name" => "Bread", "quantity" => 1}
puts item
puts "---"
item[1] = "Grocery Store"
puts item
puts "---"
item["brand"] = "Treehouse Bread Company"
puts item
puts "---"
item[:name] = "Bread"
puts item
puts "---"
item.delete(1)
puts item
puts "---"
item = {name: "Bread", quanitty: 1}
puts item