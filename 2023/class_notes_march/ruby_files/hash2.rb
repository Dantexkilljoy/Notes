hash = {"item" => "Bread", "quantity" => 1, "brand" => "Treehouse Bread Company"}
puts hash
puts = "---"
puts hash.keys
puts "---"
puts hash.has_key?("brand")
puts "---"
puts hash.has_key?("money")
puts "---"
puts  hash.member?("brand")
puts "---"
puts hash.fetch("quantity") #the hash will stay unmodified
puts "---"
puts hash["quantity"] # this is the same a fetching just with brackets
puts "---"
item = {"name" => "Milk"}
puts item
puts "---"
puts hash == item
puts "---"
puts item == {"name" => "Milk"}
puts "---"
puts item == [name: "Milk"] #one is assigned to a string and the other is assigned to a symbol
puts "---"
puts item.store("calories", 100) #stores a key and value to hash
puts "---"
puts item