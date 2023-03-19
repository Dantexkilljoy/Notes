hash = {"item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company"}
puts hash
puts "---"
puts hash.values
puts "---"
puts hash.has_value?("item")
puts "---"
puts hash.has_value?(2)
puts "---"
puts hash.values_at("item", "quantity")
puts "---"



grocery_item = {"item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company"}
if grocery_item.has_value?("Bread")
    grocery_item.store("food", true)
end
grocery_list = [grocery_item.values_at("item")]
puts grocery_item
puts "----"
puts grocery_list